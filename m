Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD27CF31B1
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBtLR1+Q2sJfhES6+c+Rkl4IaRrKXTj0wr3n9pX5k24=; b=NWvequwjfu+quT
	JLocGCZ4ePyIpmHflw4HK1K2eMtMewH6BaRUGrZ8gbIA6fSvdDfgSCl9EXrXFEe2Gi1NxF9gKNJHg
	lHftDNWQ2KAQcnE1LOPurzxu1s4cJ3hO+3JVw6rNmG49B/Gp0r8Ct6RDRzTrXE4j5mxNnpHPFvENs
	cvx24vzOG5bDBihKfs08DH1YUELiKypx8IDuxUTxOIbe6RafQ/W2dhTMuby62RcErmdBSeHLUZoGO
	9mgh1duNE9rId+CXkKCchrKBjAPX+f2FnXo/w0X+HjminI8Wc3I1zZVwp0Yf5Eko+u7fDZw2F+7kI
	vqNliQPMY7jSuJ9i/cFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdf-00000005UwO-2Rzt;
	Wed, 02 Oct 2024 10:31:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdD-00000005Umu-3LUc
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 10:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Hy07rBgoHRslj4sPGDvnHmNWupEY5u+zxq1ov9k/fw4=; b=n8YRS93d8w5oA6CSFNgHpkGg6I
	WUAyW3YHuA7Sq2WgKHMj13SZrk4fnMtoOxsrEMQ4IYvzJF+0q9HxzTDk3T49PzioChQsBWuGAaDi/
	vGs+xRVT/hKj8GTrXZI6FnFAEn1jgQUSscUpvxBmI4ZB/mQ1rgZjeMMX3YnJm0RnEj57TKYjUkoQ2
	BeC8T9l2rP2tyUQ0evnDjkEAlvnlsI5PFtMZXXi3F8WJcKeHc1p8ge98U/1pFlBb8q0fhIwy3dnAs
	dg8DvR1wCgnPF8cFQXLr3xIh/pQO4xxX4zEfQBK7cOCnATjgg3B839xanKGyLnWg9n2L7KwfDfOz2
	KigJcoaw==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwdC-00057r-5F; Wed, 02 Oct 2024 12:30:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH 0/2] Add Powkiddy RGB20SX
Date: Wed,  2 Oct 2024 12:30:47 +0200
Message-ID: <172786503305.2125927.10368247142330125313.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033055_857926_4C184EB8 
X-CRM114-Status: GOOD (  12.54  )
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

On Tue, 1 Oct 2024 10:40:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB20SX handheld gaming console. The
> device is mostly identical to the RGB30 but with a few key differences.
> Namely, the size of the battery and presense of a function button
> differ from the RGB30; these changes cannot be detected at runtime and
> necessitate a distinct devicetree.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
      commit: fbfff2f64673b5bc7e937ec806db6bee31c5d32d
[2/2] arm64: dts: rockchip: Add Powkiddy RGB20SX
      commit: de7e071ad5e46515e2d930862820c65fa53dbe2a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
