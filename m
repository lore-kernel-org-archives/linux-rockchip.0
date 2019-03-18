From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Re: [PATCH v2] drm/rockchip: vop: Support dithering to RGB666
Date: Mon, 18 Mar 2019 13:47:37 +0000
Message-ID: <CAPCnQJ=V32yJ01NZr0EO8hjjs=-zj+0MGddS+qd6txWqFs0mvg@mail.gmail.com>
References: <CAPCnQJnDB5Z=xNCdBw0R3k18GDKdUeZ__2fBA_YKYzZ6Rdny2Q@mail.gmail.com>
 <223cf04e-5b35-4194-33c2-5614b329ec4b@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <223cf04e-5b35-4194-33c2-5614b329ec4b-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 14, 2019 at 5:20 PM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> How about RK3066? See/use linux-next.
Hi and thanks for the notice. The rest of this mail "addressed" for
anyone interested.

I've added the dither bits for RK3066 - it doesnt have the bit for
Allegro/FRC (sel)
which really isnt a problem, but brought up a question for me:
Should the code avoid calling vop_reg_write with unsupported registers/bits?
I assumed a yes, but based on my tests it already does it on RK3288..
(atleast x/y_mir_en and act_info iirc).

This only results in a "Warning: not support reg_name" print in drm
debug output,
but to me printing warnings during normal operations (even if they're
only in debug output)
seems wrong.

I'll be sending a v3 of the patch after this mail, and i did avoid the
unnecessary
write for now, but i expect to be changing that line of code :P

-- 
Urja Rannikko
