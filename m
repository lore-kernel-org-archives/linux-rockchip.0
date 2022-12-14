Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC169C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPjHaX4wNH3n9ISaFvFTDLRKQkoPAXFDWyFrX3JNNkA=; b=awzup4JukLThmz
	okOsQsp8dcuCBjbcS8G8HCQy1XIQr5JYLVhbxftvuox3n+vpfbuVOLKW/P5KCjBYQYfC3tGgISKZu
	bbanx/N00xWRDEtIWf9Dc9v85FNCGjSEoaxMR1hz18WE+31E3DBvMO5+oIfQxS6eYSRsI6oHNKnuz
	Py/MPmWu9OFMK3gC1NpczovYrONBMlwac77UQFOcLdFg5N2H2BD4eIcZg4uXiXXIgCtUihG7PrABd
	FEKO16fdvKTrRm+QB9QN1+oLYYLv7G2vDII9cmQJHvjcy1xrBEeqTnK5Nzs/fomHnoEiCoddhNpvb
	wWwc62MxHPYFFO/AANBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5SjH-00HFYe-NM; Wed, 14 Dec 2022 14:27:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Sj0-00HFNP-EC; Wed, 14 Dec 2022 14:27:11 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p5Sis-00050J-39; Wed, 14 Dec 2022 15:27:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v9 0/8] ARM: Add Rockchip RV1126 support
Date: Wed, 14 Dec 2022 15:26:58 +0100
Message-Id: <167102796003.2796496.3271414980618092627.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_062710_493357_88021F56 
X-CRM114-Status: GOOD (  11.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 29 Nov 2022 13:24:16 +0530, Jagan Teki wrote:
> This patch series combined the next level dts patches for
> Rockchip RV1126 support.
> 
> Changes for v9:
> - fix serial2 alias
> - collect Krzysztof ack
> Changes for v8:
> - fix rv1126 dtsi
> - remove uart aliases
> - add adc node name
> - add uart dma-names
> - add timer0 node name
> Changes for v7:
> - fix dtbs_check
> - new dt-bindings patches
> - collect Rob Ack
> 
> [...]

Applied for 6.3, thanks!

[1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
      commit: 79ff3e4040fbe20a010c3e28f8916c6a44dabdbb
[3/8] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
      commit: afa5af90d2ee35c9bb283b1b0d26bd43e78df122
[4/8] ARM: dts: rockchip: Add Rockchip RV1126 SoC
      commit: 0cea6325da9dfaec807c65b0bdcfab7d9a235069
[5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
      commit: f1459809a2194d5808067bdce86ad007f6054dc4
[6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
      commit: c4b37f32c7d3c79646fa090fba7054ae7141c510
[7/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
      commit: 58022d5a620d8a6e72a8691b9df65da7951f19b9
[8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
      commit: b4dc2677b1902bb4ca7e5fef1bd49ba6138b759d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
