From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3368-lion-haikou: remove identical &uart0 node
Date: Tue, 31 Dec 2019 12:47:36 +0100
Message-ID: <1957883.kUPM6Xjvq3@phil>
References: <20191220125520.29871-1-jbx6244@gmail.com> <20191228074757.2075-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191228074757.2075-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Samstag, 28. Dezember 2019, 08:47:57 CET schrieb Johan Jonker:
> There are two identical &uart0 nodes in this dts file,
> so remove one of them.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
thanks for separating the duplicate-removal from the other changes
and I've applied the patch for 5.6 now.

Thanks
Heiko
