Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1B606A330
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 08:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0VmypDij;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=UPOZ+yat
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gQyMGmGbe7Hw6m0G1gnTZ6a4TMAThnVhlx3qTAf3r64=; b=0VmypDij4UnP/1vh5c+dOpvZZP
	WWqOhmDBdiRiYTbhiFaG5k18quC9vYsuA1+RRvHSGFi681yCypPOpS6I8dQdUevcGdKhHcpL33ze0
	Z1v2rH3gVvjjPgPSzo29Yw/2Y8abZKVv1xyo7iL2AVvucCW2nCu69AQX0nUDtFydCn9kjW9E1aQSK
	zs0UZ4kIDvnsijeshn/xNG6uVMm2t2oTyWxRK2kyehYx0OhIotMyHLKeH+feNWX4jrYY1ffPsh5cn
	BJosPWdNvkYBLI251CTr43PNjX9s5N8FPLjG3G3mq6x7Ys+rzWaPr6wYOjQQfDgYmhJ14jSYY1z0J
	KexqZF9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWVCC-0000000CRMu-3d61;
	Thu, 26 Nov 2026 08:51:12 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWVCB-0000000CRLs-03Y3
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 08:51:12 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-3adfb744fa6so5748851fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 00:51:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795683067; cv=none;
        d=google.com; s=arc-20260327;
        b=b5ntt+Gbeg/hVuDiveCAEgDuvBUrbSSk4uiPUfWqHetW8xFpAPe2LS9j/n4CkCJ9s0
         r7VT2OKi/trs+t4tEl6CZG3YLgQIyO324XMa2PEvASTC3OqFl3XM0aZviZLC5OLK+G5X
         GkOB1Qg1mtRdOqq0XOb0glaz8QHuWfu5XvXxQ/x7GZ6KLv/xtzawDEYoLJFuMJD8FjS7
         qn4Imw/yug2RccyXT1oBPybtNYFKBfoc3loOksACugQCUe1wD90RgIVYmIFQ+/dth1e7
         QwBnBczF9Y/8nKvX4vQ1/E2GTTU1VfvrrpqfAdEL1TokXnQUtqnJAaAbpuHdymiGET6V
         wnng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ITOW/VUS/xqG6eUBGAKhOlylTSyWPsCYCdwCBfmp5mk=;
        fh=1TNI1YeAWa23zdcnrmQ/TEBNbhdQLZz9/+vSJo9klhY=;
        b=Dxt9NbpHebf0RM6baGckMIQCEkK3Pj4xE1UWt0Ty98gYe4umxXYe9SiWGkVifTZE/x
         XV6I/cXOrOtUj3u66f5YSOiTo/WtcZWFm1Tc6aQSP7xizJt40xUrNeZY1FX17v2oSkXO
         2qCqrxQ240yNnitJYxUZm9tEL2zA9XFkYNZ63N7YlppwAnmCVri/nrSa1B41BROC5Xda
         3yoG3XoUR8143pK9y4X38X6AAoCfNPXvwvscwhNPQPnKg+iZl+mJ8Kt6ZwBnZH/oBhEC
         f2qcU2T0yKFy5G1klXBWcaUleuXLrdzdbEPKrL/tMi8cUwWE4A8IS9fV8YuQTRuMlkAl
         GCJw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795683067; x=1796287867; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ITOW/VUS/xqG6eUBGAKhOlylTSyWPsCYCdwCBfmp5mk=;
        b=UPOZ+yatMTQSNj5b+5L0FMbv2XKeMhUz5T7iSXnSZvQ5wJXeeYo5mymgL8AgZmprTI
         eq5K5UrvlfVQC4MaisULUFNinmG7kg4XNhM1r7UktyTEi/k3XdGJmY/7FhJvl9btnkrv
         YVOHhvkvRucYD/1KcVySZ+EgnI4MQ/2D0sIth97/Zq+NnmqJ1c+iuqMvRCZ6jZN8ip/g
         rt7FARU5eLCczywYwHs21ifNMUe9AcyOLYspR0dzxNTikdH4lat6kvzfZvAwxzxf99nF
         Wq8cfLAp7jqo3g0VwWlGPUKAXJiMJUxxQQU9w9+lOh8k70bfgGCUz34K3yqzAzcvzXEP
         x9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795683067; x=1796287867;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ITOW/VUS/xqG6eUBGAKhOlylTSyWPsCYCdwCBfmp5mk=;
        b=sKy4r7etukDaEFFB4LZk6E+mMGaOqjAj2Bu0eLY89Y+TPf+RK9mTmZMxvMzr8fjjBe
         dyc6I48SJRzb0ghkXk4Jjk0wuxI3JzjncN4QTfLGHiobcNUbwT+xwohuzlKYPv0lnsvu
         y0uYlaiWs1pemL+oFPGU60KjdAFYYGhc0LG1qPTlGRktTQ3d90k92GKIN7hKg/KPgjAv
         6N6CfIJilyowj/v7M2GNXa530Rhawl7AldtlAxc2krxie+fo5xRxRfYeCo/XU01dXGeh
         ewEDaAc/Xt59uPSIwzogLbCuhT4gNsB0WIJ+ZGqOphAzuMq/fcCbAz/ZXTvKZ8e+qGEn
         iJOA==
X-Forwarded-Encrypted: i=1; AL+hErGB6VbTwDgHKsINuH4mGetnHrV4OS6NYLW0K8YQ+JA2s9NSye6jNTU8MHKZ2HT024WXp27xsP/7hTSg6q5Lvw==@lists.infradead.org
X-Gm-Message-State: APuU4Z++vv0+36UR6pbBPRxXtMFdJZ4bs+CzFikKTY4uWg4Tr85kY9mc
	A4TcWk8dOe4Wv4UG5hWG/fAC9jMpEhPgWmZvYU0JNozURZoKTDkOvEYR77ejyuj1A/9EkvGWEQL
	zt3xKgLt0H0yNoRkSck/0+LkzqUxTZFo=
X-Gm-Gg: AZFdTZd1ph4QecMH6N9XtgbWSLuFyOOHPEkXNKJJQcxOABoLSGy3pcIva9JCZxVDxuK
	/d3HhXdWFUvEdvxO9ylOtNTHP/8zQgP3xhUVfyPfkASJ+PMuDlQVYXeDfeZOBE4kp2Lr3ejekkE
	mZGpaJXSeK7FXhymV+GFIEYoVw8VMnI4tLH4izW8wMUrbpSUhmFTCUd27TOtz2XAlNxBsuyUW6p
	kyIAQQVEPEkQQ2PE32JmKSRkVt/NurIs9BZMu2CmKuvs6+1C6QYR07sEshvp3MD36i8NL+1/MQL
	NPuLNkwtDrD0tLJmzejy283EJorkT4HiVaH9C/ftWG1lPRpzBEszEUTgHcsiAnioyAnrS4Lhox0
	X8X0Aa0uqgfs52K+WHXqecB5nB+DwzSkWFC+p72BMigGVBFpNUKiBiw96kmcXpmRjg/Tk2ck=
X-Received: by 2002:a05:6512:b88:b0:5c1:5488:f57d with SMTP id
 2adb3069b0e04-5c1bc85b735mr7624851e87.4.1795683067065; Thu, 26 Nov 2026
 00:51:07 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
 <179533990370.107225.5765165679182115805@gmail.com> <20261122094050.GB2739410@killaraus.ideasonboard.com>
In-Reply-To: <20261122094050.GB2739410@killaraus.ideasonboard.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 26 Nov 2026 00:50:56 -0800
X-Gm-Features: Aa3M54qYbt6ioFRQuuBcY-nINhYnmyO69wxHem1cDdgKrz6EAiep7-lR2zDaAac
Message-ID: <CAEy9hNWKmcr9qsvrS3t-UkG3igA_eYdQY_Q0sxWK7fccpWWeow@mail.gmail.com>
Subject: Re: [PATCH v12 06/23] drm/bridge: synopsys: dw-dp: Fix AUX transfer
 timeout race condition
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_005111_063968_048408DC 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 22, 2026 at 11:40:50AM +0200, Laurent Pinchart wrote:
> There's something missing here. You may have reviewed (whatever that
> means) and tested it (probably), it doesn't seem you've understood it.
> All of this screams of a big hack.

You're right, I withdraw it. drm_dp_dpcd_access() already retries a
timed-out transfer up to 32 times, and my test only counted
per-transfer timeouts under an artificial RT hog; it never showed a
DPCD read that actually failed. Sorry for the noise.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
