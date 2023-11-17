Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFCFBC197A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 09:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NcTlA+GLK7rlcF1pF5hjjOpo7re5VxWyNFNcT+u1XU=; b=Yss+qo65fzCxhc
	jVE+AhnW03CI/7aD2E/5Cg8LS5LdPyZsdyK4ubCDyzqfgm6AfapaakGsCs4HAkhz7/6ykCjQwQtyF
	/E2dmG84s0MO7fR4Z9xVoTtu0faKK4qiXrbuVQ1rjb17aif6AGTt8y8/Euc5NC7ecUdKXDfc5c1di
	8SidNNBHWC1CbooqWYvDLtbTLYGrfn+900tQkfhJyi3DL5mkv50oPjiPxbG7Hq9JGnB80EC9SYkF/
	b57Om+gzSUs6DxoJRyNiJFaGUQkjbzU8H0t7iIILIQoUo+z476SQRrGdgj+kl1lY4vC6ZLSPh7BoK
	cWB3RtInWK43WS5ZdvBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vUx-00695Y-0s;
	Fri, 17 Nov 2023 09:50:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vUt-00694S-2y
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 09:50:49 +0000
Received: from i5e861935.versanet.de ([94.134.25.53] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3vUq-0003ER-7U; Fri, 17 Nov 2023 10:50:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kernel@collabora.com,
	Rob Herring <robh+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v1 1/2] dt-bindings: es8328: convert to DT schema format
Date: Fri, 17 Nov 2023 10:50:35 +0100
Message-Id: <170021461021.1221251.790740434324924821.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109184453.108676-1-sebastian.reichel@collabora.com>
References: <20231109184453.108676-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_015047_955634_2BDABEB6 
X-CRM114-Status: GOOD (  10.35  )
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

On Thu, 9 Nov 2023 19:44:43 +0100, Sebastian Reichel wrote:
> Convert the binding to DT schema format. Note, that "IPVDD-supply"
> got fixed to be "HPVDD-supply" during the conversion. This was
> obviously a typo in the old binding. The old binding example, DT
> files, chip datasheet and Linux driver use HPVDD.
> 
> 

Applied, thanks!

[2/2] arm64: dts: rockchip: add analog audio to RK3588 EVB1
      commit: 97c39c7a0965b3eba87baa2b7d51443a46e21b8f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
