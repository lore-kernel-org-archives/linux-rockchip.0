Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DEE0C36000
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GDqRIrMqWh2Or+NMuvTdGxVvBceWhhBiNfnNQPG0j4=; b=JRfjxVkl3DxSTb
	Z4wZdcmb6Cjf/q22+9Q/G5BfVmQT6uSLUG9ZgKhqlAlB605VXJbFmoU2EgH4S+e64V3eLcu12Vm3u
	5AVQHdVt++ch2JUfFKL2EaHw8KBDYnxjx78U+PasKXykqXsY3siJVn5iQm3bT+htWQkz+kAIcA/6a
	T62ivTxpAuc4ziE2C0EEUmSrUWjpiVj6lYUwSFVM9Yp4SvYoBLB7j3SDTYWMHJT9gM9sCFwc9Z9hr
	V9/ccWDZOd6c8FCFuUsfdvM6oKKECHsL9M1drVR3Wkg1urLXg/tps2xPKHxniMYItzgOmA4ubpKkw
	TmWLRYyq3myCzmasJ1Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZmr-0000000EYFf-0eDd;
	Fri, 21 Mar 2025 10:39:37 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZai-0000000EWLM-3r4G
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Mar 2025 10:27:06 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7c59e7039eeso238291885a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 03:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1742552823; x=1743157623; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C6XBFDQAIe6jgF6F40xRB15uQkrbHzlxj9SySg4AP08=;
        b=LmNfEBZZml1EDYYkD0nWv72zHMf49uMTytRkxAVxsm27xEadylgYHZy/3AivwuscFY
         IEbKRWTKqPcSHUdnHRUPNGQuLPxA3mELcnV3ZMSjpMKKX85hzF/dpFwkFlfd79FBgN41
         9MX+kYT2KGA2iVSgB5Ogn7wkkAoEidsKzjMnVmTs3yDR/7ACTRtkKEu2AcR2gxQUSNQS
         6juEvxgpOyRN6dZENP5Rt17a/F7LFwKJMOkmGLm57/8twHdwgG+Rhxwzi+hZqLMmwy4u
         i1QUQFboZ70HOOCv3OP9Pd1WHmY+CTPF+U+6htpt2rizcPbNEXHYwaejyvUqkdIs7kBr
         myPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742552823; x=1743157623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6XBFDQAIe6jgF6F40xRB15uQkrbHzlxj9SySg4AP08=;
        b=isbvfDr7PTg0qp+GLQKczNb5zQcyPeCyda3jgI+ssV+qmSor1j0dFXGvPebct41BCa
         NWYiNegMHmt41bdf4NhxGeoDAVvCc6ZnJGVts/atelu7QKk8I6YwoTwJH+WrxtlvLGt3
         4WV5hTs8MY7vgfbva956Os6MZHeG1PvFvwfi0ay2BiP3s5BmlRX9eOVP9zCsn/dtHugc
         cE9+tMhUAS9LITRRSC+y0OZucXN8X1wMPASGPaMIRBOc+it06vuD7XKD0OEW5PztQ4/T
         m14eM1ojSpxMktVsMhtBDwlC8g3S/LB1qEvqeAR5zJetjwhD4bZnbFHnNXQ80sKYKXL5
         /r7g==
X-Forwarded-Encrypted: i=1; AJvYcCXH/qinauGA//vE8sWU3q1D0/1Z8ae6xCZcb6jfUiQDgufV/PlxhNFS06tMyYzwyJ2IgiPVksTTVaHvu+Tdqg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZ8FstQ/BQ6GrGwSMaxHqPu3zN3AkFcQ52HwK80HOGV6K+wH/9
	IxM9x3kpdb8HFo4jqRaWeGo6x/moo8O0DpSzXg5Dtt+cZhAdRtM1E5Kg7BlACdk5yARDipoeyQe
	7g3KrMcXfG6rEziGVjN3QDCofLTi0U5MTnsLsQw==
X-Gm-Gg: ASbGnctosHiChgVZ12+vEQoC/Xt+nMfItbhUa7TfaBUoaGQmdWN1GYCcALO59Q34cnV
	jbziCtlB2bY0Kbm14QgQ2sTc+93uVtT71Cz7vBDiRTSct+HDJ9x7ErqZ8z21nTlWCYL6D6m4VD6
	G7elsZHAAOBYJm/OJhoYZSs8iz
X-Google-Smtp-Source: AGHT+IGtKZxKAoZgtR0aBlIVmyFJdz4vLgELnLl5z6u4LuYLjXNoyuq0UVrTF+CIIc7xPDTVRmAHZ+SRVPvG/7TyZXI=
X-Received: by 2002:a05:620a:4055:b0:7c5:a423:f5b0 with SMTP id
 af79cd13be357-7c5ba13361dmr406693385a.7.1742552823192; Fri, 21 Mar 2025
 03:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250314085858.39328-1-vignesh.raman@collabora.com> <20250314085858.39328-2-vignesh.raman@collabora.com>
In-Reply-To: <20250314085858.39328-2-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 Mar 2025 10:26:52 +0000
X-Gm-Features: AQ5f1JpymW7UP78_0g_Z-sNByprYGBFX-xYqr_OlbVrsK0-Hob7Zk88vIu6Znbc
Message-ID: <CAPj87rMjF84yyPqBshuGu=8qx6Xhq9Z-HgEnQe=tRtbu3E8OtQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] drm/ci: uprev mesa
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
	robdclark@gmail.com, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
	lumag@kernel.org, quic_abhinavk@quicinc.com, mripard@kernel.org, 
	jani.nikula@linux.intel.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_032705_137373_1B57FEC0 
X-CRM114-Status: UNSURE (   6.81  )
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

Hi Vignesh,

On Fri, 14 Mar 2025 at 08:59, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> LAVA was recently patched [1] with a fix on how parameters are parsed in
> `lava-test-case`, so we don't need to repeat quotes to send the
> arguments properly to it. Uprev mesa to fix this issue.

Thanks a lot; the series is:
Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
