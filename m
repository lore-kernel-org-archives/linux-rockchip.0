Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ACE7C61DBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 12:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3xxwkfiJ6U06Bfp9tSDdafoLQVBL2qfcg07IndyPiY=; b=d+0H/vpYfUqoh8
	UAQ9in4NVaQVZd3Qn+dFP35PUBaG3b73pgQCcL7sptXCTQVFHcdYRX78VOEGmlwu7F4EaDmkFxsO2
	3YzjhAmI13CTQ95+ziBSCo0QNeXf3Q5+pFTLX8bung950mW4AKPOSsEFuCb1/5267/GzUo+pPmqlT
	DNh/GaflbzVuXewD40o0QQkMJGmAcH1Hr6VEHOuawXSDpsQtXxoqaud3VjhjOJgCeeUxD0GOvX8JP
	+X9RHicdnCBWterPsq4f/gHpdMZQ25J+a1HyFuMoHrkZytzzo2UJD2S6ibB2NHIM4Gderu2OiL0Fz
	w4/U9V89Mz7P3MVAEAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqX9-00000000nz3-1XAi;
	Tue, 25 Aug 2026 12:45:43 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqX6-00000000ny3-2okk
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Aug 2026 12:45:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c16879184e7so45220866b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2026 05:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787661939; x=1788266739; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L/tKJYcvU4NXXk+0M0kR7FOdArxlDjY1WmX2yzsU5wU=;
        b=aFP9P93eBEZ17ricNKzyq/EV8sr0u0xZexEt6ktjvxPfkXqk77bTz/fk26h/9tPufe
         kArS9i54ybOjzT3CeslI1Xffm4+Wh/wpJH3c5XZwrHL1FL6hviCdQy5ji4sKV51egwdc
         Iv8sTNhumY5OrHBwC/rKjZzcJNrFWd6BhAyBSQDjBB+fCb9Gzd/ko4g3t3E8+9o3rEAb
         YnWx+2iBjxd/5EnlZwBEzbGRr9OUp7mEdh0hKF/6QpnqntbTdYNxpFh6H5Sur/ZnL/m6
         sDKI6H5UqAmyx5EP9UOi/n0eRzVsbhvZAegnzdeDjCBbUjYleHql8YD0xqNGQ1icmnHZ
         kkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787661939; x=1788266739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L/tKJYcvU4NXXk+0M0kR7FOdArxlDjY1WmX2yzsU5wU=;
        b=pHjnrmn+phuA/mc2iiqH2iifwZHWAr4PkM5XfZKjA69qNI9NyXVcnZdnGbQvskw4aE
         EJGfjuuWsi5G0n5g334vpjFGrxQZgXIRLG4PzDo08dsM7c1E6qepoV4W9iqKS74D6ZXh
         7lMbKYMCwFOTxd9xy5v5fPHhu+1BdbbVVBCg6nrMhwtBIQMYGArPkCFRlelcAKSfGmyr
         rAyYHSd40EY+EZjeFEYEJcA8unVLBXqVBKmEb5LU+KHYU3Ju+RFnINJTyWl4K5js9/NU
         TfUu5BbDxl8v/E54b0QaAlpcsWSquexdBqeYNGOYwcjXhqEL78zPEAADWSTylvQljz9Z
         gBKA==
X-Forwarded-Encrypted: i=1; AHgh+Rr8O2kvV/gRdL7r1Sm9AbGLEhnY+ESK++WlPqmGVzSmatapo1Q8VFxmNk8RXgws8oFgmovgaJUjbhLPk+T6EA==@lists.infradead.org
X-Gm-Message-State: AFuF++n24Bt2azlenz/mW7LzJQ4tZU17Z/gyCEpY3eAnqdjBgB0oSGgY
	1/mxBaFcucwcrHComD9b8erQm6UwW8FxFnPg2nAH+7mSuqreWMWNH903
X-Gm-Gg: AR+sD11CCsIpoHbIHjFwFViHcqq0GGPy1wkxmih19XpaGxUOSVz+RsZpn2XLdKBlR67
	suhjuPgepW6PB9qzuoAa5kNO1/Q4yMz2kKWvrezJAvKKpMyl0XK78eROALhlgY+o4pyjTQisV4A
	tTBKB0Kw0DEm+H3a4YwGdthWwUVotLg89mTdMvNlEsrzv+rtGbahWG5lZPw4EvDA52pwPmmTCj8
	nj+5ipNZDvbR5Vv2s9Bcpv1vq2Zh6FqwDRlFLzdoCFqXCxX/OxYzDzxHW75KFVgwmpTGMrhtjiJ
	5aqqlHVLDWf0dqOMp3PrBxUDPODMLom+Wpi3fI25zp0Oc3e7ljX/z4gX2HaxlTGZ3qsKXNgts02
	NigKWOj6aff+7FXW6ewEHUh0pkj6o2KsQlXOk1vQ1ctHG6s3X9Ew6dx0PgqTUsxJoZpBDGWPbZi
	+oTQnJcULVM2o19Px5AZzO464oy+80ZNUeBmvzmsKGKRegp+zwffw53u+nYeQGPzO4f9Ft2B9Gy
	74UP9dGcECGgnkUYFEf2riZTZsPStOzLJ/p6s65m+NrCJw=
X-Received: by 2002:a17:907:a089:b0:c15:de99:8060 with SMTP id a640c23a62f3a-c2469f96e84mr1943665966b.0.1787661938300;
        Tue, 25 Aug 2026 05:45:38 -0700 (PDT)
Received: from OrangePi5-Plus (178-223-53-162.dynamic.isp.telekom.rs. [178.223.53.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249673d43bsm1646329666b.47.2026.08.25.05.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 05:45:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 02/13] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Tue, 25 Aug 2026 14:45:05 +0200
Message-ID: <20260825124509.11657-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <CAEWPSH5mxTbUkNouxm6yecMZYvDowquhvYvhaXQ8HoMtHD5U1g@mail.gmail.com>
References: <cover.1787568658.git.gahing@gahingwoo.com> <7d47bbef8b629eb287fdfa3e8d6c62b95de6b61d.1787568944.git.gahing@gahingwoo.com> <CAEWPSH5mxTbUkNouxm6yecMZYvDowquhvYvhaXQ8HoMtHD5U1g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_054540_748615_92B3931E 
X-CRM114-Status: UNSURE (   6.27  )
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

My mail client wrapped the tag comment in the previous mail, which
would truncate the disclosure when the trailer is collected. Here it
is again, on one line:

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores, induced reset, differential base, JOB_TIMEOUT_MS=2

Sorry for the noise.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
