Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 344CCC87FCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 05:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tyf8U3NgQ1kf0ggcXZO/iS8i/SabSJHzTMqdqWL1LRc=; b=RLy2ofPaND6s5X
	SfOD6c8Bxvw7YIqtv263VzTQvpz6HjvcUYzugUjpHmx5TQNlqBNGmo0YT7IeFT+2afryyMQ9dxHW6
	nIIGx5mRZBIdvxMcYzmivHeEHgCZ2kEsE+I4lgnsJdM9IGo2OIC/p5LK+Bh+F6doFAoHhWebk9S89
	urxEEMCGCjg0l1qrG1Bd/aut6G7BGyHRmLKcoby0WZC4viuUpI2SNyAXRFayH0k17xpYsStRBhWny
	f2jg7/dyK98cuAmdETd3kIgzR49y7WA4dhRdL09JZBRLzuWHEJDymmHGoWbV1jdErfEmxa+GyI2VS
	ua6qWG5VEIxyAM0z+Hvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugGHr-0000000DeXl-0DBA;
	Mon, 28 Jul 2025 05:20:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugG8o-0000000Ddir-1fcF;
	Mon, 28 Jul 2025 05:11:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 42AAB5C5803;
	Mon, 28 Jul 2025 05:11:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F09FC4CEE7;
	Mon, 28 Jul 2025 05:11:12 +0000 (UTC)
Date: Mon, 28 Jul 2025 07:11:10 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Erik Beck <xunil@tahomasoft.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add
 LinkStar-H68k-1432v1
Message-ID: <20250728-dashing-discerning-roadrunner-bc8b87@kuoka>
References: <20250727-linkstarpatch_v4_6-16-rc1-v4-0-0dfa7aa06ec9@tahomasoft.com>
 <20250727-linkstarpatch_v4_6-16-rc1-v4-1-0dfa7aa06ec9@tahomasoft.com>
 <9ebd9797-8d92-4799-bb8d-59a796e6043c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ebd9797-8d92-4799-bb8d-59a796e6043c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_221114_561732_1673A370 
X-CRM114-Status: GOOD (  13.76  )
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

On Mon, Jul 28, 2025 at 07:07:32AM +0200, Krzysztof Kozlowski wrote:
> On 28/07/2025 02:03, Erik Beck wrote:
> > Add device tree bindings.
> > 
> > This device:
> >   - Has not been supported previously in the mainline Linux kernel;
> 
> Irrelevant, drop.
> 
> >   - Is a single board travel router made by Seeed, using an rk3568;
> >   - Has four ethernet ports;
> >   - Has four USB ports;
> >   - Has WiFi (MediaTek MT7921e);
> >   - Has a real-time clock (rk809)
> > 
> > Base commit:
> >   - commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494 ("tag: v6.16-rc1");
> 
> Irrelevant, drop. This should NEVER be part of commit msg, because it
> makes no sense once applied. It is not even true in that moment.

Also now I see checkpatch warnings...

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
