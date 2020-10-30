Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA2C00A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 22:04:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C78A6206E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 22:04:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="PHr+VyoU";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PXotuqdO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C78A6206E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XTxZ7mt3/ip9YXTvsDevbgNc7jOlcVDTFwjAAKlaYxI=; b=PHr+VyoU4iTx9W1Rw3AITas9lp
	NkjAwHOuI4vzvy9rAHFbiCqzyufzC+cKE1EKhpYBqedrQgnU962JpTldw+VKnOJT+gbQ2KF4IABfE
	K18jCOuLdgrT7Qb8MYNgDi+ZYTNcnUH9PpyI85SjyaX1BHBXqopDJYh3xpQczsYSDmYWEUka9XlsL
	xGy1hKnSCzJOPT7l+lpYReEQcS0fvXSUM9SgPyuMY8H0bTJbZju5+FDS3bV6vHyNQ+E4VCbrWtS4T
	jZZ5NP3xREZssELu1MY9EikNZPbueeUuGQZ9j3mHXlBnTQ+jSOYinymwqfE1l5No/lzJ8Ra/tyY5d
	zCdScC9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYcVO-0002kt-EF; Fri, 30 Oct 2020 22:04:18 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYcVM-0002kG-3p
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 22:04:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id k18so4197220wmj.5
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2020 15:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=GIHGcZfwXbGXSVrPAO6X2nhVJghT1GZVx7nHWu9UzEc=;
 b=PXotuqdOYszRVDxVAHo7DVhGOWyaSOP3VIFXZAwByjViTen00oe9Cxs13jxpSDd/g8
 VrZiKNNiFwsBzzGVvwFsCssi4uok9fYOt3eATxtUfNae7BebBA0br/CGPfwKyLNi3xhO
 S2znsys6lctFYAGXD5DHb1PqwUcmfjScK/ZF61Lk3I9vZXZ1/Uozewojtwc7MX5C4XFK
 BLmGPflHAfyLGPxKq2/PcWg1bgNe1ot61zFzoMkAd0UpV4AQYPdlVewTsWCfKScNgQQm
 0qCKOq/5VAXvll0yO3nuETdtPr9/TQLXT2OV+PDYoQIKWJmZ0JQGl6O80I4O+EhUKsCB
 ttZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=GIHGcZfwXbGXSVrPAO6X2nhVJghT1GZVx7nHWu9UzEc=;
 b=SkGuB7D3egO6qtQXRjj+N/SByLDKVyI0JbK53TqEhIgIa1OevyhK9AFY1fIXlHPDhK
 7Lhj55cAjf+HtaN7dfUcT6jfehICLJc7QoqHgpzdNA4VGCTWc8XJ/nbbYKvn+2t0Gl5R
 zJxIig7h2sZoFLWGwBEJOiG5S2AJTep2l0y0nOSGP/I0sFBihU+GreU4wt2ERDFZQ6k5
 Ww8jueHO1C0DT7cHd1hmtixheSMPM8NlwLsamIkFgp2pn7ij5G0vkA+/OGYBfOEcFav/
 zL1Mzx7zXdu3DRsQ6j9ujWgA7tG8rIXD92vygQewbBuhgu0lC+dbIngGqhPWBP+2rIOc
 pagg==
X-Gm-Message-State: AOAM532jKm8/5ZvekjTaGgPETNZYOtyV1FWa7Y0pS//R3tpDM+Oc+J0T
 cv+wmlCZ0J0MDSRHHVslKdg=
X-Google-Smtp-Source: ABdhPJyLfn7tUOIzPaD5UTEDVNIPoeQE4Hot1+pbcLn7TaGjQEmFrGBTJaeDRB372tMG47UbdRCnuw==
X-Received: by 2002:a1c:a402:: with SMTP id n2mr1143945wme.160.1604095454916; 
 Fri, 30 Oct 2020 15:04:14 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id v6sm5940454wmj.6.2020.10.30.15.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 15:04:14 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [regression, bisected] rk3399-gru-kevin does not boot with 5.10-rc1
Date: Fri, 30 Oct 2020 23:04:13 +0100
MIME-Version: 1.0
Message-ID: <83376abe-f2c4-4b64-ba24-4c15cdc49d3f@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_180416_233508_FBA28713 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Gwendal Grignou <gwendal@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 linux-rockchip@lists.infradead.org, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
commit dd92f7dfe1ba3bad556c8a529edacce7c6fd0195
platform/chrome: Kconfig: Remove the transitional MFD_CROS_EC config
broke booting rk3399-gru-kevin.

The display does not turn on and there are no easy means to access the
serial port, so, no more information is available.

Regards,
  Vicente.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
