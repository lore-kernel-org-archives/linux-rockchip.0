From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 1/2] drm/rockchip: add const to
 drm_encoder_helper_funcs structures
Date: Wed, 21 Jun 2017 14:36:52 +0800
Message-ID: <594A1404.2070408@rock-chips.com>
References: <1498026670-10671-1-git-send-email-bhumirks@gmail.com>
 <1498026670-10671-3-git-send-email-bhumirks@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1498026670-10671-3-git-send-email-bhumirks@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bhumika Goyal <bhumirks@gmail.com>, julia.lawall@lip6.fr, maxime.ripard@free-electrons.com, airlied@linux.ie, wens@csie.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2017年06月21日 14:31, Bhumika Goyal wrote:
> Add const to drm_encoder_helper_funcs structures as they are only passed
> as an argument to the function drm_encoder_helper_add and this argument
> is of type const. So, add const to these structures.
>
> Signed-off-by: Bhumika Goyal<bhumirks@gmail.com>
> ---
> Changes in v2 -
> * Let the line exceed over 80 characters while adding const.

Acked-by: Mark Yao <mark.yao@rock-chips.com>

Thanks

-- 
Ｍark Yao
