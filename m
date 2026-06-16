Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E56CD98D2
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 23:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HV6Ckv6n/UYrPmCqONynlKRquiiINhIyp/Bi0GqdWCk=; b=EgTeiJ9cybgPZx
	8VtVU8F+VEGhxIUHzMF0DvPJ9izVow2VkpS9aVOBzoPi2sX6N9NC2RZ/jXimKhD8nVF+UfeuRrCxf
	9a1UWO+4MmYAjT+jnJ1lRZpoLTdQ9USWu5LpYcb8x2frXDpIWEG6FranAxiWiBgylbdvWuJsCen9S
	BGXRCpxXLqyj6hUq24KIFfZLLgOwyIh9h0go5ObBciBdPi2j9HLv4QCYRx7Tx/iBSG67K5nHDV+K2
	UHl9aQXxukbTV2S5E1K5ULHwDK+FT3ZITQyyKzeZPvdHdFNxXOEz4kDu296iC2hasLintltW3CHBH
	15axrmNB5qYpMsFDugdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZcql-0000000GOhg-42IH;
	Tue, 16 Jun 2026 23:05:43 +0000
Received: from mail-vs1-xe34.google.com ([2607:f8b0:4864:20::e34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZcqj-0000000GOhI-2UCd
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 23:05:42 +0000
Received: by mail-vs1-xe34.google.com with SMTP id ada2fe7eead31-6cfdcd6dc43so3653229137.3
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 16:05:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781651139; cv=none;
        d=google.com; s=arc-20240605;
        b=IyEiAuE+eRb6lW8uoRKMlZYvWcEp1hDjjALiC1XvE4fWNPp/9HqilUR0zZa0Xs4OIe
         CNGYocky6RBg0xca5gLUu/tAZlUVem+Et59I0uQRpIw4RAiU1AeDItRRRnBCXEMMsBvX
         5i9ttqCZHxrZ3Qh2lGV+85CBdE20+Oo62LH2FwEUwk0vCHkEcH85t+kD0vr7K+z9osf4
         3LBj0/OWb/ayLWxm494QkvLhAQ5jS31dS8GflIa+g6wAtLCTKOfUJRcH7SJnvPf1x0GD
         H9Ov2YX/EmGMK0GLqRbs6CeaJXjEmZpK8KgWgX5yZo0Y/nfuzWE+a9Vbp78RhTNfqt9E
         YMPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dU/cPNUCFK6qnY/kyzxckM7VdtEe8LIyh+vmqKHClRs=;
        fh=BQCViiw7Q3mLnEj9ugtzeOSDyR6bp3khVUfWvK+4z9k=;
        b=Hz1QT5kAQXs/8SiHpWNDf03GGur4kwGHKcfx8RkCE2pQhdn3TkBqhgK8HYlFTJkVei
         vo6VHd2n2iezfN5ZW+nHaJ1OUoBSGFo6lktZ5BFG8IEol4XmKPCkdSVHDr684UMduv3q
         GM/uXl9u8IuacCzWN0jCCI3EPS3iFpaL6BNit5geFWv2i0pAE1PnyvpZPyDyC+ppwcb1
         tshoKANZo6wPy3u1ltGbfjIzXCkS/BSh/4WqxNvwqwS5Dn4SHPlbLmhtag0zIGnvRuIa
         Sb8vRxfuNJwmQVSfJBhG1j2qjbLTAHWe6IlooFYhrXlNxvQCNEidCY6dq8S87VwgRyrp
         TjYQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781651139; x=1782255939; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dU/cPNUCFK6qnY/kyzxckM7VdtEe8LIyh+vmqKHClRs=;
        b=F6fZExfpPQWcNlBSAwdg42QcHlJwfpM8Ax0OoC+r7LK0m6oV7TsDQMYDW+rZvOqFQW
         4ObFAxVuUyjnAolKaLzK+zoH2DVrtaBNBWs5z0V87wEoSRkK/g9u+ZPEVnlbCVvpPZ9z
         +e2ZneWxGRMV123XAwJL3/VpT7SbhReuHWTZpY0yQCM5EOS4gi00aEqwVMqBmtmr/EGD
         x7KxvhdFlxx8nCqNpGYLzD2MfnGCLc3SDOzL1a5UQaRo4DFnh3DBHUqIIeIE+fgesvwN
         MQIpCR6qYvKBIgzP03FvqueVYQLuBcw5t9+vR6vbUVp8FNF+D2K9ujPVA2VJvvqLZHs4
         m5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781651139; x=1782255939;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dU/cPNUCFK6qnY/kyzxckM7VdtEe8LIyh+vmqKHClRs=;
        b=JEFjU3n4rG0UuBPe1/UUQkfnAUTi9hRm18NqKFlZTJGcqYYQtVD62KwPBfn6zWqRIn
         tEkdGMxemFOPtZohFjdkORzjOdcKjBhmu1p5KvvnEgYzT1INuQ0c9rMfNYtk9xSao1N7
         5I8SdxgTdN26Q/tby9iGNuAxr3+mfNPqVv4s7pdXdrW1cmBicixGm3iRHjY8u7iCY6ed
         KqkwETJRqVSl0uf8ssiWon1O5wZtUFQVF3bkVBOFSfsP2U6P7ldyrEbVlljnwMjTDNLB
         qeaRM3WsJax2RNZRW+spwnHREvru8sUIxst0qdOM4D46RFKBBYwkRLyKncjchJbEcM+T
         5IMQ==
X-Forwarded-Encrypted: i=1; AFNElJ92BoCXwvbbLUdK+124uVL00omcJEAg/n6Wq1a/LBfaU4zT3BYTA0QdI8N4xp/oCtZcyxC66oY48DcepvxYmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGqZUSa+KdYVUJQxzA0RazI313pe0/1ntfYBypTPM6ODl/a8bL
	Te4rMytHe6mKuI1FNYNCChMpUuxbwqFmRDaPWZIVo5y683z2vDlGi27/zik6HOgSKM75Rh7sLeg
	zN84DXPL8xRPV27ai5Tuh3wrI/pL9wMt6/8en
X-Gm-Gg: Acq92OGt9QxMQY4lyTF12j2YxBRrnODu5DiHHzvk/Oug5+Tbxqv2zV3+m7EP3hFpA7j
	nmTEIz3vD9tTViFm1EjcFp6PXc+o86CTWkoHGVbRm9gDlw/X+a7aiybANpNE4mKMdKWBvTAgv2V
	J1CMxC1DhxpTevuCeXEW8WVlWQOVH8NQhzv2WtsC9IjrjUwDsITN7/sZ1H0j/AJi5To5yIC+3d9
	Oxk8L+spSz4Gi+GLcjeABZr7dAdJhTRG+coobWqTraLl9E2ODpVtFSFSNWM+mn28L5eZWjcrgGc
	odVHnsgdMltzgKwMJIRXxL8TL58WDXTEdeifmiQ=
X-Received: by 2002:a05:6102:5e88:b0:631:26f6:7022 with SMTP id
 ada2fe7eead31-7246d101dfbmr966289137.23.1781651139691; Tue, 16 Jun 2026
 16:05:39 -0700 (PDT)
MIME-Version: 1.0
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 17 Jun 2026 01:05:27 +0200
X-Gm-Features: AVVi8CfczbDma5T2ZRktF7LO-6p92gBjx95xCPI9pM8Wc_d4TyPigPt7E5BcIFs
Message-ID: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
Subject: [REGRESSION][BISECTED] No display on rk3399-gru-kevin
To: Shawn Lin <shawn.lin@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_160541_647168_D021AF64 
X-CRM114-Status: UNSURE (   6.21  )
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

Hello,
there are two issues that result on a black screen on the rk3399-gru-kevin.

The first one is due to:
c8079f83e0bf312645050c17d9c87deb707369c1
gpio: rockchip: convert to dynamic GPIO base allocation

Reverting this does not fix the problem as there is a second one:
51eb548ade20158b4f4f8693a95b1f31a2480e8e
drm/bridge: analogix_dp: Apply DP helper API drm_dp_channel_eq_ok()

That second one depends on:
d84b087c7662dd65cd51b228219987c31b1cee02
drm/bridge: analogix_dp: Apply DP helper APIs to get adjusted voltages
and pre-emphasises

Reverting all three commits from v7.1 make the display work again.

Please, can this be resolved?

Regards,
  Vicente.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
