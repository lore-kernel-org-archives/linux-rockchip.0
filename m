Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A22C531CC
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 01:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcZ4jJp1c0D9O/GKkle+YzxOcW6zL9x4SGGTwl+wdXQ=; b=lCfcC5XkravUcY
	q3Ed7MPiBxiOHpJ2BeeH3/useviu38YDdOF4x7eUfNEoYQAAz2cgLtp2lgEEKp/+G1hvGk4kppLh9
	F6d36LuFlQJNrG2oGpxCUAQkL98vPLfVmlVCS85JRJIviKMqUl8CGj27qmYmT4V01soGxGDdbdXcE
	QwgGTmxcI34zd2iJdcBGQZIb6Dez2meKU47ZTf32P4wL7TbRppL5fCxUD2X+hmkb1jZLWiUC5KI0Q
	9inUIXr7WJmldiDNCcQjJFxf022AZ2O7pmZiG21iOsBFcIjo2hFwypQK4JNachsD8HHF25igRKGK3
	iSGQucJ7ZU1uUPUJ3D2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn59g-0000000FMSl-0DZ4;
	Fri, 24 Jul 2026 01:56:52 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn59d-0000000FMSK-0VQs
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 01:56:50 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-92edb12cdf2so86949285a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 18:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784858207; cv=none;
        d=google.com; s=arc-20260327;
        b=E3dNfFuaS/41aZE+Y2/fVoFvyn6VokGgEwsTNXcz8IGw28kfPwWBuW6lDAmdPDy4Dz
         GudtiJ4cc3pg9F+2A6IfeyLcvDJxyLhW8f+Jc6UQnUOWUgPu1B+6ZTklbG4ShvEZKMy5
         oACH5rN3KqUelzmfDNi12NFGBLZIfWgDkZrvSUVsfeglsXIwZuvL5DnOMPeBZmUo0opG
         IGd6I3DnLGeFxBWL96cKjCTQ7QW77Z90GklE9l8X6BnWd0nJI0tzbG7AITTl0H3oCSfZ
         IKADyPdj35jLJoYfHOHhvBbqXw0lDlsh2xYlvKBclnYIZhEmGqL1jfrIpcU3vCQnAUtz
         kS1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iP84btfrOhWAIb+P8k8wn0gRS7J9zVaBuXHX22GBgQA=;
        fh=zotcUX6vuuHjgsAUafcHFw2Mpt69HsaU9S5Qq8e5rS4=;
        b=O7O/cBwQVLOT5BDjzrA9949u/T2TvTxnj4wpAjS+wUwyKtwqtPLY0iwnUoVZTvpitL
         +3+yjJbh2EwdMHkD3lffV8Fgfc7ie/1tr8EgXRukiU52e1OfItQqX56fTOJ4PhacHp/M
         gFubGTU5uMh8n2G0Vo0DiycSSE+6Itp3lZgxokh6qZQqNbwlCzNesR7/rYNKTnmUfchx
         AeGmYb3KSUDittmdYE7VZrG1pS0PiZZbLvsbaFrOHDmBHlgSTXh+tfc9ImbL4ezL5e2n
         PvZfJz15YRtWFCNakY8OfCADPOmDd1ypzffNS9wB2ZYuiF6pvhFe6qgZeieieV2Lu4jI
         c0QA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784858207; x=1785463007; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iP84btfrOhWAIb+P8k8wn0gRS7J9zVaBuXHX22GBgQA=;
        b=Z+p8mXT8PamiESjVQXF2XcLffTcM2DpiwmF+WLrux9FnECCqtyISwZY5o3cfJcICoM
         j/jXsLvNzVMu6MHZv5b0gcYk1IVog01nFtPJpXWoe/1reA8fmPDoL+bhpzaHzcd3EGP+
         +sLqDi+59LE/CZFJw3Lsj2D3fk2hL6zoEfBMD7Y3IJNUHpDGxRChfl9wMMHdyh35QDIy
         NYO3oL5wIZ8WK9+wqJeq6iB4OAMMzVDIMAQkPTYtKNevZ0wZUk5Od08jgqHBJYwAL/hu
         +aiGwgBPiYjvmXI98gReKHhzvTd2xXZ2T3rXq6Q0uz7FJXX/PiQVefmeLh9lVJfjZ0Wv
         0qDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784858207; x=1785463007;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=iP84btfrOhWAIb+P8k8wn0gRS7J9zVaBuXHX22GBgQA=;
        b=izVSVjSMwPkqmPpNk33w108VFGRfgQcMxeWGqEw9sfYCXE7DmZ1vBrjbkAoAhkNY6w
         g5OGyudOk4Q4j7TjEMk4e0fcd0dKGWlywhk72fORToV4tmcpaSBo9PgSado1XcQIj/YW
         ac02Epa2k2jhAWBQdXms10zPlYuucIJMRnUreMI4F21mgV8egasmQRWdg6Dztw+SRT0N
         /Kjs2V3A+9jBL6feNvH/ki/XpAJ3tnfMXoeLIix92s+1ZeIclDoxYNEEXHoMu+VeNmPt
         KwueYcyXoUlYmOIRw5hineotgTtnSTNROIm1JkVO3Z6C1MOI6fVz30bOEzCTVxE8XJWv
         Ommg==
X-Forwarded-Encrypted: i=1; AHgh+RohX8uZf6N7c3w/Un3ZDBusUUcrF+Y6izWR6V5SrQWNDCSVU44Oz95b+8BJ2FJi1EH6NVA00RiNSCnSG3L5pA==@lists.infradead.org
X-Gm-Message-State: AOJu0YywucmwDjP105+XiFNYB/okpXhpS4E1lVQIepdpx4yQ3Zem8GkV
	+mOF4qNAGeqs6A7SzYFBuZZ7woooVG3+1X2b7VaJBJ5iUw+eFr2A2LPJmzoGNdnu1GdJViRMAnW
	ZoFPgFVZ3uWFzBHQcDLUMVSZOHcunU+M=
X-Gm-Gg: AR+sD11/4ofdkLCm9dKSoZpd91z8vGmXF3N6DBY+AT7DBDCMSEZYhCK77XdpCpamnBv
	C9mCwfJFBdKZXDXJUVOt+jmoQACB+WQu/EcabirmGhFXrcL4vG704X0zuaNZJjZaYWjshiRKTsF
	IMvDii6JQIBU/Qrg2uipo13kwqjd1ILTRPjfRZ5n4A6heavrO/vV8CXJ6v93Km8KC4Y6JiyJuFu
	xZsLbSKjrlQFZ453AJdXPeJeYvGCEJY5s3+JN7FNacl0ia5RDHgm02TQ8HeWFHETakrCEbByetO
	9vNSfry4fnkh8Ld1i4BJQgEg7B73crLsj+5EIGG8PVebLuD/QHGr
X-Received: by 2002:a05:620a:3704:b0:915:5cbd:1d96 with SMTP id
 af79cd13be357-9310360605fmr579615785a.33.1784858207478; Thu, 23 Jul 2026
 18:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260723153656.2167-1-tharitt97@gmail.com> <62e3c0b4-831b-45bb-a7b0-b97be2cb3722@collabora.com>
In-Reply-To: <62e3c0b4-831b-45bb-a7b0-b97be2cb3722@collabora.com>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Fri, 24 Jul 2026 08:56:35 +0700
X-Gm-Features: AUfX_mylVmcRprTv6Y3jwq5H-M0MI4OBIkB2IESI7RL04jZ1Mp4z8XxWhgRJCvQ
Message-ID: <CACak8wPMt9Qp6xSs6AATLRjH3pHgFvvT0xxGHQY3q_WQWNO_BA@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: vp9: do not arm watchdog on
 preparation failure
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcamplbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_185649_224257_37D9CFF7 
X-CRM114-Status: UNSURE (   8.71  )
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

> Nack.
> First it schedules a software timer not an hardware timer, which led after
> timeout to call hantro_job_finish_no_pm() with VB2_BUF_STATE_ERROR parameter.
> We need this call to complete v4l2_m2m job.
>
> If you want to stop the task before the timeout you need to add something like
> hantro_end_prepare_run_with_error() where you do the correct sequence.
>
> Regards,
> Benjamin

Hi Benjamin,

Understood. Thanks for the review and pointing out my misunderstanding.

Best,
Tharit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
