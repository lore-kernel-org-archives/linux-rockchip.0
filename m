Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADCDBC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 19:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5Xb8IcJ0hcKbGDH20CKSHZ9f4bI1zrNgNiRnsVAWtI=; b=ajbtbfNTGaGZUq
	Iek4CbKu8d2xQ3JYckp6PK6NzMggOyNdeEvYr3eH2NC5dnWXa6hy01Kxv1NqDXPlmeBl874i38crm
	DHFhmTRtoeSh8eOoay3nIDmOHNkNLPMuhWI4w6CPWJEC2RLzQZrhJp17KPfSBazmJs5d3UEwwyXYF
	bdLJDadHHGlYUE6R6GUz//MXFkcO5FWFrOiL7Z0E7DPpWyaYuprqyAbBZAyDH+9iOqSy1TITsNwlt
	KcSzJLgZGPY6oAck1cUNzjvbCWgL9fB0yr+XzEgeRg+ezDfPbjrpdvMmeHwcRKUmG1WAxkc0T141o
	ENTinb7SpLRD+r1bCwDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2a-001tBz-N3; Mon, 10 Oct 2022 19:02:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2X-001tAf-2c
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 19:02:14 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665428527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KpXip+K8SKil4N3WpXAE/12XCkzHBjSikpH0Cn8dM9k=;
	b=o4DoF3uyxYYWHNhVSuhPSUbfXR29Ntk7Ci3gVjTKDQLCOjh56kiEeuF+PS7OObcAlDze3E
	1FmO3ueHMdE3mQtL98FOjqpHNCiul3p5duGPcndUj9XN+EyVy0cpfbVeRFOEwJSNbHkMwT
	tMPy/ygEKAxu0a4vtZSRw4zJw6TJGRg1E9kcJYPYdPvwpbM5WVdMAoYsuAiOSwH1V+vNGc
	zkFelDAvV7HXkEk86yAx7u11LD27bQTbhfFVEOntWWFW1Tl7C+I1oEAngvS1O98I2A/THU
	fkW6viixZEnkmi6a/AHl6d1eU4aglGK5ntgUtC7AEGuajfBgEBPD99QKOqy26A==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 0/3] Fixes for rk3566-roc-pc
Date: Mon, 10 Oct 2022 22:01:39 +0300
Message-Id: <20221010190142.18340-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_120213_582798_EBF572D5 
X-CRM114-Status: UNSURE (   4.77  )
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

The following series fixes some of the mistake 
on rk3566-roc-pc dts

Patch 1 fixes gmac failure when using rgmii-id.
Patch 2 fixes i2c3 wrongly connected to i2c3m1.
Patch 3 removes i2c5 as it is owned by hdmi port.

Furkan Kardame (3):
  arm64: dts: rockchip: Fix gmac failure of rgmii-id
  arm64: dts: rockchip: Fix i2c3 pinctrl
  arm64: dts: rockchip: remove i2c5

 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
