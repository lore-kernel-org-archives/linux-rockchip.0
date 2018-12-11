From: =?UTF-8?Q?Richard_R=C3=B6jfors?= <richard.rojfors@gmail.com>
Subject: Re: [PATCH] drm/rockchip: dw-mipi-dsi: Support MIPI_DSI_DCS_READ
Date: Tue, 11 Dec 2018 14:34:55 +0100
Message-ID: <CAHB-PjnCPyf7+7_UHR1V2WM2AeYA8ZscLU9AS9O-u6aohqGVxQ@mail.gmail.com>
References: <20181205130243.5810-1-richard@puffinpack.se>
 <2530200.jDlzaWghUx@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2530200.jDlzaWghUx@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, =?UTF-8?Q?Richard_R=C3=B6jfors?= <richard@puffinpack.se>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Fri, Dec 7, 2018 at 3:58 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> The Rockchip dsi driver got converted to use the generic dw-mipi-dsi
> bridge - will be part of 4.21. And there the different methods seem to
> be implemented already.
>
> So this patch does not seem to be relevant anymore. Please wait for 4.21-rc1
> or check linux-next, if there is still functionality missing.

Thanks, I didn't know about the conversion, but it makes sense!

BR
--Richard
