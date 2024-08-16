Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F8EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 13:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SL9ECZAi1wkqvvR08aYGQm6x88hFgIHpjgBAgMtqu8I=; b=FnwK6DbyH5zOmv
	Xl3fg4uzv6QSvRY5cCp4EtoycJx3QudqBVLXRPIuD5hwxO4Dm7kvKeODPayDfQ1jzF8VNrEblOF8n
	YIG0z3RUCXYdArL3I+MItS5IKYsGI9junokRo2ymQoW4NFdHWToNmD7gbKKhLn4V4D/gSArXusnBX
	J5vkwDUjR3kvkvLi5LUkJfp0rZcQWXgAlUaS86DSjNpEvcUYcb9qcl1ONFybv1jEBnRLKVSOJQsK9
	n3SEimDla6Im/Z9U23BgtNvdJBpTXLhiiWkmVKKrIfWAhpS8nnTD+UBMsHzy7UdwodqzhXzjh+4ZT
	Ez7jhXcwcNy2VS75BVYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sexSR-0000000D6hM-3QNd;
	Fri, 16 Aug 2024 13:57:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sexSO-0000000D6fj-3f2G;
	Fri, 16 Aug 2024 13:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=c/qeNm0gickEi5kHpgsZtFtwQ/SdYgXdxnuELkHBkC4=; b=s+dtJTWMR1Z+iN5/NcVIN3Z+5x
	ZKJSHyMDp6qT+0g6RR/0naXbad1QJp8au5ngnLaWAq7qmwNiIUwLwd2lT99UVnjBh1RgxRFYcGxIS
	U/3yuezvXEsPs9IvY7xVFANYGD4lM8aqZbGFq7wGqfC9KLqy+xXJYbWbKhFPdYN1vEa1YE0hSvxZa
	OxwsLCSiR66VXrh+22NnNn6UmwgI+/kyirGRXv1sVz7m9Av1Yq1ZmiCNbVmnFEyf9D7aNuB6KnVKf
	P43b535eIAxltDBT1oqKdbzuFIyT82poSk7GUQ5HsZSxddFmUxRkafJ2Sg3uAY6b8ej8u58N/pZe6
	LaMfmsIQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sexSK-0002hb-TQ; Fri, 16 Aug 2024 15:57:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add wolfvision pf5 visualizer display
Date: Fri, 16 Aug 2024 15:57:26 +0200
Message-ID: <172381656037.84677.11780206459201436040.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412-feature-wolfvision-pf5-display-v1-1-f032f32dba1a@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-display-v1-1-f032f32dba1a@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_065732_943155_B50520E5 
X-CRM114-Status: UNSURE (   9.99  )
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

On Fri, 12 Apr 2024 14:54:09 +0200, Michael Riesch wrote:
> Add device tree overlay for the WolfVision PF5 Visualizer display.
> Since there shall be additional variants of the WolfVision PF5 display in
> future, move common definitions to a device tree include file.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add wolfvision pf5 visualizer display
      commit: 73d6eb7e77099054f7ce4a595767603cb4a096b1

DTC update in linux-next now:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d2a97be34548fc5643b4e9536ac8789d839f7374
to prevent the compile error regarding the unknown node-name

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
