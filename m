From: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 2/2] media: hantro: Add support for VP8 decoding on
 rk3288
Date: Sun, 7 Jul 2019 07:24:43 -0700
Message-ID: <201907070704.D6C5A32D@keescook>
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-3-ezequiel@collabora.com>
 <1562164006.4604.7.camel@pengutronix.de>
 <20190704091934.3524f019@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190704091934.3524f019@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, ZhiChao Yu <zhichao.yu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 04, 2019 at 09:19:34AM +0200, Boris Brezillon wrote:
> Hm, I fear we have the same problem in other places (including the
> patch series adding support for H264). Kees, I wonder if there's some
> kind of safe array iterator macro, something like
> 
> #define for_each_static_array_entry_safe(_array, _iter, _max_user) 		\
> 	_max_user = min_t(typeof(_max_user), _max_user,	ARRAY_SIZE(_array));	\
> 	for (_iter = 0; _iter < _max_user; _iter++)

This seems like a good idea to add, yes. As you've hinted in the macro
name, it won't work for allocated arrays (though perhaps we could add
support for such things with some kind of new array allocator that
included the allocation count, but that's a separate issue).

I bet static analysis could find cases to use for the above macro too.

> The problem with this approach is that it's papering over the real
> issue, which is that hdr->num_dct_parts should be checked and the
> driver/core should return an error when it's > 7 instead of silently
> iterating over the 8 entries of the dct[] arrays. Static code analysis
> tools can probably detect such issues too.

To avoid the papering-over bit, the macro could be like this instead,
where the clamping would throw a WARN():

#define clamp_warn(val, lo, hi)	({		\
	typeof(val) __val;			\
	__val = clamp_t(typeof(val), lo, hi);	\
	WARN_ONCE(__val != val);		\
	__val })

#define for_each_static_array_entry_safe(_array, _iter, _max_user) \
	_max_user = clamp_warn(_max_user, 0, ARRAY_SIZE(_array)); \
	for (_iter = 0; _iter < _max_user; _iter++)

This does have the side-effect of clamping _max_user to
ARRAY_SIZE(_array), though that might be good in most cases?

(Also, is the "entry_safe" name portion the right thing here? It's not
doing anything "safe" like the RCU versions, and there is no "entry"
since the expectation is to use the _iter value?)

> Any advice on how to detect such problems early on?

Doing static analysis on this means a tool would need to know the range
of values coming in. I wonder if Coverity noticed this problem?

-- 
Kees Cook
