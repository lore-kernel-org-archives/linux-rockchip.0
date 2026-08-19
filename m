Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82169C5DF85
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oa9dbd4cXqUrJPDP3V9gpHLE84qK7GEI1ZyThZOr+g=; b=YXtAy2uUAJUGJl
	YdsQ89O2rh9XZIjn+zSPHCV2pA+E4LA3FPJw/rjIDVGd5r26czCzzT63pOG2Wi6bTgd7a2DnFYMFl
	IembXYiW9WtRVADBfa53DgZPGjbM1C2zf6Hhea6lR002jQy6MYgDNezf/hrgv/c9nhmHbBdSrrVCk
	/d8+9MEg4JloHg3TPF63gXxPf0CYD60kTtNIdR34P5uPKII/1bG0kjwmDjw3+EvqNeXhqrVFu2WKS
	bmyT6Y4K4xaLX8iASMdqn6fMIF8/RjEmKptN1Vz+WN60sNHAcfTiuurX8RsdBmCbvQqkSHUSj6pSw
	sLP98zHqpX6nNm+Gga4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlLH-0000000AOpz-0CKO;
	Wed, 19 Aug 2026 18:48:51 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwlLE-0000000AOow-2AEr
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 18:48:49 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47f502ff678so144052f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 11:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787165327; x=1787770127; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Bjn5VJLDS1yXucT12O23qgB/U5aanozAOffCoTMJ1Jg=;
        b=TLhTxBJUGLWXxxlg2GgctMfpzR3Xz1QyP0aN8sIynAaJ9wPBhmMURDWIKgPub/cM6v
         7z6M5OodQZh7ztLosw1j2gpYx+E0uDQWJulTq3+Ppzj5bPAnaBAR6aY2+TfNuPRhjxpU
         arH7jjkG38I1CwgvZn8YebpHtZmg6tm1jaxg69yys70cC1S/CxfrxFMGf78cLf3qe+OO
         N06iFYcvNio3Nz79NNLlS6Q4aqgEdBFoaB0szHby/UX59yzmntjatIq6Tq4xO77f+Rj4
         FmS5iGaqenWKkPSKHKSwlibvfE+xAsosC5iD/6rzU7WQG4KBxFkDZK2ka4/Z3Nj+tZHR
         KgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787165327; x=1787770127;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bjn5VJLDS1yXucT12O23qgB/U5aanozAOffCoTMJ1Jg=;
        b=gtKYvbJxQQV1m8l0nJvZpFpLiNc61tYHdOKq4GKGfmnSRW37982thMT9ODOy8PjL7f
         oneCllogZz2mRlLQOXlL9Hwp/0cEuxqPJrxv0PmyS18UOsV/jT78CGP1u3FWhqVQMVie
         p+9gSLCG2WTOE9M/jPZUou+Ql1lzr7Mf9KSoAnjmXRaZK5vU3ZYnSIMHJhuXG19b4wcq
         4JViIdVGmvLlQlPWbcLxOp81NcCNOf5rTBqp831HjiNlZLwru/WtgAfG9HhfSuhEdSCD
         MBDbnBpni0Oomc/4QzudupjNocklwsjCYOZszDMgp+XkviJ5PTqXnqZ2pU6wcSUEECN1
         5wrg==
X-Forwarded-Encrypted: i=1; AHgh+RpEoMxThToTuurdOHZU0TNJRN435F0GZChddP1m9bWd40Rf4O8y18lqKSI+nthrMnHlAxzlh4+tCjYDnNKeyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnxLWNDt0yy7nCtNKKBfhCkQM/prcg/qLY1GQmrF7mOX/evRF9
	bYlqhEPm7nydc1OUSC95GasoGtIXz0NJ6a24/U8xnh3gQUrPqc19LVaL
X-Gm-Gg: AR+sD13vClgF5g8TyKKZXlHbfeSfxwElwGgo3cFjjA4wL++/qGVkdFsUkgc+vI+mm1/
	8gSdC6Ewa2Tp4vWqZ1k3h8HsNaXr77Yya0V92/jhm0WkkgbB73i4V24LKfn0oJvMdPmiC52lDgF
	1gLEjKc2qDYn+LenH03fp5ub2pw4tWOMcRYbj1UCFPOMT94TI0LylRuLOBMrhnWsFDOMgBQUFuQ
	erTrS5X5HKCNJpbo3TC3Eu0Y1c6JEM25H5lfvq84quEqD8ZK3v6mjC2jq22EkQOfHOh4oFpC5QP
	KRE7jfAmtLOh7kGqhmmbkCNt+PXxEFL6iylwdHA+2mnMqc/RNeaBb4B2pTSzKCVEOp88K1305B2
	YC6LulR7sOgRyba+2yN2HkNADJlAZ9BLErzCMbbtmgM9LmDo1UGmDzc+mFhiKLJzyAB/e9olNG1
	x0GxIOlNBA6fDmnYjh/3oMQTCjTxHBv4IdAtYoTVnJUts9AAlIMWhiqBzccOvp3CbUvWAkX9fWR
	TJhZ6rv3+jeetFeaUOpHqmHyhQAFtXeFD33Vi67c3Bd8YcaoZmRlAMSxcHIwaEPFFJb
X-Received: by 2002:a05:600c:3b84:b0:492:4a7a:e415 with SMTP id 5b1f17b1804b1-499aa1a8c0dmr80658135e9.2.1787165326812;
        Wed, 19 Aug 2026 11:48:46 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9296006957154F80580DB7.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:6957:154f:8058:db7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa1755b2sm78585025e9.11.2026.08.19.11.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 11:48:46 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Wed, 19 Aug 2026 20:48:33 +0200
Message-ID: <20260819184838.6723-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260819154634.7584-1-royalnet026@gmail.com>
References: <CAEWPSH7ETfw2TDjUfOvcVtDm19FC43x2vP=Lh7m+XPOGptnPWA@mail.gmail.com> <20260819105723.632029-1-gahing@gahingwoo.com> <20260819154634.7584-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_114848_575857_5AE92330 
X-CRM114-Status: GOOD (  12.24  )
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

Hi Jiaxing,

"Coming days" turned into "same evening" - the harness already existed,
it only needed your question. Both halves below; raw npz kept for all.

1) Forcing outputs below the zero point on RK3588.

Model built to your exact case: 1x1 conv, out_zp=128, no fused
activation, bias centered around zero so the outputs fall on both
sides of the zero point (59% of the raw reference material sits below
it at oc=56, 46% at oc=128). Open stack, mesa main (bf70ab68a21),
which ships no lift - the pre-fix state, so nothing in software can
be compensating.

  vs raw CPU reference : 56/56 and 128/128 channels within +/-1
                         (47 and 113 exact), global maxdiff 1
  vs max(cpu, zp)      : collapses (0/56 channels, maxdiff 128)
  NPU values where the raw reference is below zp: min 0 - they pass
  through freely, nothing pins at 128 (0.6-0.8% of values happen to
  equal zp, consistent with the reference)

So on RK3588 the output stage does not floor at the zero point with
L=0. The floor you demonstrated on RK3576 is real there - your
three-run experiment stands - but it is not an unconditional trait of
the family silicon. Which of your two explanations that favors for
the vendor's per-model 0x40ac values on RK3576 is yours to judge; what
it removes from the table is "unconditional in the family, so the
compensation must be hiding somewhere on every SoC". Here there is
nothing to compensate.

Reading what the vendor stack programs into A on RK3588 needs the
vendor runtime, which this bench machine does not carry - if the
below-zp result does not already settle it, I can set that up after
Aug 30 (travelling from tomorrow).

2) The remaining discriminating counts.

oc=50, 60, 90 and 114, same protocol as the 17th (raw CPU reference,
no clamped comparison, zero constant reference channels in all four):

  oc=50 : 50/50 within +/-1 (43 exact), maxdiff 1
  oc=60 : 60/60 within +/-1 (53 exact), maxdiff 1
  oc=90 : 90/90 within +/-1 (78 exact), maxdiff 1
  oc=114: 114/114 within +/-1 (98 exact), maxdiff 1

No channel pinned at the output zero point in any of them. Together
with 56/88/120 from the 17th and the earlier 20/33/40/48/72/100, the
RK3588 side of the discriminating list is now complete.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
