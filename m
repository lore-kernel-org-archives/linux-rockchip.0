From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties from regulator nodes on rk3399-roc-pc.
Date: Fri, 13 Dec 2019 11:04:14 +0100
Message-ID: <6226306.W37etdpfGF@phil>
References: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Markus,

Am Dienstag, 10. Dezember 2019, 13:44:38 CET schrieb Markus Reichl:
> Some regulators don't need the always-on property, remove it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6, but please check your mail client as "git am" was quite
unhappy about it, which I fixed up in the patch itself.
Maybe just switch to "git send-email" instead of using Thunderbird.

Heiko
