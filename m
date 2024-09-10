Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B97EEDE9AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WnlOwkliHjk0L+hCbPxmsqhoa8YOlXgF1PyPYnpcm0=; b=c8VbCcWM1Tlbrq
	+tp19Tzw0cvLYIyxLMbQqz5cLqenpsGyQYncxXilnFbOdK+r8phmuThQV1rtDwO7lcvWfT96dM1ts
	CDNGRLNcbGgKWeddhe/X3POfXxEogxWADPcVGwopAV9hP4DdFzZKkio47pMaFWdba2BSyAACUDq31
	NCLpLYr5i1Q0RV8z+6/6J1ksG6yMyzww+92dy3GrD7hVRE54xPLW57WKA80zgVuf+PXfZY+s+iFAq
	FVbcNE+3SQfcSLtsMebuYxpE0u44Bc5i+2xTXxUjb0IzygwAIoT8mvAKUea+gag1yic6eXRFgJKH9
	0dh3y8Ui97PqS22bMezw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Xk-00000006jXH-2oOD;
	Tue, 10 Sep 2024 18:24:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Wr-00000006jNv-2PtB
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tJdvoX4bYWfo5nT4U9dcgC8mgoUNfWu0sO6XHPGd1zo=; b=hR2Ju+2AeJ9MOJGCVR47pRYwie
	ffm9GBt5O1fFqMqIwTtTp9ek0tkDzXKASo62F5d9IDqt3D/a1Sz09cgtHSRM7WNWq55sPb7Zg7Tq9
	Xz8+xzv3aICvO1noaO9sq+P464H6zDpYoJqxlqiRp/LATrndaRZMD7mSF2kVNq5yX+2vGdzX4tgkJ
	kznImmhVFwaQFgfoVVFbS8NK58cNh31dkCxiMVQvnQf60TnbWibn4DlA9jn1T6X7pgy3fVMwmdMR2
	p8AbOCj1qFpj2X+oKixYUXv7R5vNfrxOwqC84ppnUNKPeP+ZgDbflxzNIYRcCZ25iwM5Alb9CR3MK
	G6m9+G/g==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so5Wn-0007L4-6C; Tue, 10 Sep 2024 20:23:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 3/6] pmdomain: rockchip: reduce indention in rockchip_pd_power
Date: Tue, 10 Sep 2024 20:26:17 +0200
Message-ID: <1787473.G7SD5HZVK5@diego>
In-Reply-To: <20240910180530.47194-4-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_112353_650169_767E6A89 
X-CRM114-Status: UNSURE (   9.28  )
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

Am Dienstag, 10. September 2024, 19:57:12 CEST schrieb Sebastian Reichel:
> Rework the logic, so that the function exits early when the
> power domain state is already correct to reduce code indention.

				indentation
both here and in the subject

change itself
Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
