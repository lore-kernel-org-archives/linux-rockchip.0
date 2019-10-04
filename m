From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc =?UTF-8?B?c2V0dGluZ3PjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1yb2NrY2hpcC1ib3VuY2VzK3NoYXduLmxpbj1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
Date: Fri, 04 Oct 2019 22:18:16 +0200
Message-ID: <2162187.GalWoky0CO@phil>
References: <20191003215036.15023-1-smoch@web.de> <e4aaddc2-441b-b835-380e-374a3d935474@web.de> <c180ec58-083b-5730-a188-58eb6100b7b6@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c180ec58-083b-5730-a188-58eb6100b7b6@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Sören,

Am Freitag, 4. Oktober 2019, 22:15:45 CEST schrieb Soeren Moch:
> Heiko,
> 
> since you started to apply the first 2 Patches of this series (thanks
> for that!), now after all the discussions here (and the heads-up for the
> implemented mode detection) I think we should leave the vcc_sdio
> regulator settings unmodified.

I was composing a mail about me holding off on this patch due to the
ongoing discussion when your mail came ;-)

> It still could make sense to remove the cap-mmc-highspeed property. Are
> you OK with a V2 patch for that?

Sure, go ahead.

Heiko
