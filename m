From: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH v2 3/3] phy: rockchip-inno-usb2: Set EXTCON_USB when
 EXTCON_CHG_USB_SDP was set
Date: Tue, 3 Jan 2017 13:54:30 +0800
Message-ID: <CAMz4kuJP9Q7Ly4uRBjCFU32YzbVbnsGyk+wHc+M=g8W=uDBsEQ@mail.gmail.com>
References: <7b9836ce2ca34118a2acd1ea113605a5f13b4439.1482307697.git.baolin.wang@linaro.org>
 <23666cc1a5ff123ece5bdbb9821d1eab280d0927.1482307697.git.baolin.wang@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <23666cc1a5ff123ece5bdbb9821d1eab280d0927.1482307697.git.baolin.wang@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: myungjoo.ham@samsung.com, =?UTF-8?B?7LWc7LCs7Jqw?= <cw00.choi@samsung.com>, Chen-Yu Tsai <wens@csie.org>, Kishon <kishon@ti.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Linaro Kernel Mailman List <linaro-kernel@lists.linaro.org>, Baolin Wang <baolin.wang@linaro.org>, Mark Brown <broonie@kernel.org>, NeilBrown <neilb@suse.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Kison and Heiko,

On 21 December 2016 at 16:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> According to the documentation, we should set the EXTCON_USB when
> one SDP charger connector was reported.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>

Could you apply this patch if there are no other comments? Thanks.

-- 
Baolin.wang
Best Regards
