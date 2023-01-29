Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3626C61D97
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lWt1WtSG/V/iaa21LQAzEpY+EGv3nBCtRnagInMjkc=; b=m0h6uxk62XNGS0
	41qW4zsBbWleDwgYLywt8pvb2NnkabA0ETIQDJsaosJ8mimK/T7Qbvg8kvzl7QIp3sN0/XBSKerB5
	VnUKMr+/+q4GZw3hPcz4Jt26N2ZMegp75lG2t73+8gw4VodU7E08gPBSMR16JOqbxGEIAhkRkrcYx
	IyKxqNfwQvFdbSlEXhmUzHY/i/9k7m9WnXJ80XalpLn5b1U9RdKjf4FxH1ur5tTjT1tQeQTrQnXQO
	dToic2Vt2Z32o5nN2L5cxXyp0XC9vRK+7s+HRjGP+1L3TXzp206u9N6ImBbEZj3mhYwAYORiqLXKT
	NThActW1tXX8q5wixlKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7uI-001Vxr-HF; Sun, 29 Jan 2023 13:39:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7tx-001VqX-Fs; Sun, 29 Jan 2023 13:39:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tr-0003rM-LA; Sun, 29 Jan 2023 14:39:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	vkoul@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert rockchip-dp-phy.txt to yaml
Date: Sun, 29 Jan 2023 14:39:08 +0100
Message-Id: <167499930030.3595793.1225360645667569018.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053921_557185_0FFEFB6B 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
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

On Thu, 29 Dec 2022 10:44:28 +0100, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: rockchip: convert rockchip-dp-phy.txt to yaml
      commit: fc7b83bcaf0334a80d175ab6b280fd838e8a5596
[2/2] dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml
      commit: 51b2089284f3f08ca8971b65d5b2f66f926f7d14

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
