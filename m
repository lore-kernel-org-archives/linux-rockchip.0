Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D84E6C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 17:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvkqxRTVhCTyDpW10fUl4GfhFndqR3GL8zFL0qmDy5Y=; b=VLnW/QO+0mPS6v
	Wc1FNrGL9FfO5WCRtg/aZai5mfKZ8NbNjH38aWKAr8HKis+a12ms5tBYUpRVSGM9UrD5H0/uok/QC
	/Erz0/qdcFPu0bkSaLjhTbTWX7/rHsSZ10hB4Mem8Na6YmvL0Govl+QKEDva3bBOTv53OQG7HGCBf
	OiQU87rkyd3On/rtVK0ul/TXl/0y2J/l9KL2ztNAzwnktZ75STOrjXhgocbhta/fMcgOdZE7W24Z0
	v5OtK/gO4RmYjUQQxn5NBODftsjvVVelw47+8gnhRBYYvbPwxGvOtSyHEVmSqYo3v+4pgW+yR7Vnv
	ZYNVOab3QFTnjM7xpOVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcxi-0039Tk-35;
	Sat, 30 Dec 2023 17:17:26 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcxg-0039Sy-0J;
	Sat, 30 Dec 2023 17:17:25 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d4414ec9c7so15768395ad.0;
        Sat, 30 Dec 2023 09:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703956642; x=1704561442; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKuUOBW2WKM7L/OUaH8vZcmfejQ/Wt+Dd1qvXbLrpms=;
        b=nKp1P7l+69EUvO6yQAdTmRSIyhBhc4k38BevDhmy0IbwcfftZP0z46qaIxx3ZKauYs
         y1B6G+Ky9whJZU2yHn4CS+etbnsjqUaHVMq2jTMxFs5OoBJYFORk8f9/IGUI9bRoBRC0
         Q2ULv7a8bDofEbPTsxwL2ahgHr1AUz8piXxwOa2kC3Dwy2xi4aeQvsjRUHjfSZKmFF1W
         1Kirq7UcVNiVMd5GkFohvL0E+xov/BEqrW+/dncgDp3bqNYqFPstFSMgoWVG6iDfd6m3
         rF0ht/drTqMf+FxbPrFAHnBjqkgiHL1Y84anog5pAzWw9R8v5duXre7qnYaY8/Kzw0Eh
         tRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703956642; x=1704561442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKuUOBW2WKM7L/OUaH8vZcmfejQ/Wt+Dd1qvXbLrpms=;
        b=irazn9vYzYvC3ZSchiBzZiUiNOSPVle/0JHCENBIjrBCw9zmL4dwGE7tEa/XXVM09+
         Hiygo6ElxjSuqouMXneHN7URkHh9oToHFrJxulCJLaeSryw+0w1tuyJNzjLEOR4mnjV0
         rxEK30oHHI2KfnrqDki+3kTySxVYp1IBbqv+Iy29aaJNfLuLC/aXQwYweqqK8Kp9bKLu
         lV6la1R8BQGVjdZHoiRIKpjC4JnpoCLkTvieQ9kVgiKE4l8xVmFKnY1BUI5WNI7VaX9R
         /u6+XJsbQtfsZzZRQGSEvwEc+XaPZ9M6FttOLr+RziHFLAXKNwf7YARQjiNZqpw2co7Y
         yyLA==
X-Gm-Message-State: AOJu0YzlTYZ2oeavWbIg4yxSKrUeFM73ozamrX2bSqDevG2mQjd3HTkZ
	W6XY9m9IuOKoSXtAEb/u7+U=
X-Google-Smtp-Source: AGHT+IFTYxLGmFHYKwM+FFOypakP5F+gsWJtJQduPKVjqb5KvG/4MKZ96ZeM/sekpP7W6B62MPuzSg==
X-Received: by 2002:a17:903:110d:b0:1d4:8512:5871 with SMTP id n13-20020a170903110d00b001d485125871mr3675265plh.27.1703956642353;
        Sat, 30 Dec 2023 09:17:22 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:9802:680d:e03a:17cd])
        by smtp.gmail.com with ESMTPSA id e12-20020a170902b78c00b001cfca7b8ee7sm17487385pls.99.2023.12.30.09.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 09:17:22 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: krzysztof.kozlowski@linaro.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3588 compatible
Date: Sun, 31 Dec 2023 01:17:11 +0800
Message-Id: <20231230171711.3912776-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <02e64f0f-6add-4583-9ee4-d5ace6497776@linaro.org>
References: <02e64f0f-6add-4583-9ee4-d5ace6497776@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_091724_156110_D2E33398 
X-CRM114-Status: UNSURE (   7.30  )
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

Hi Krzysztof,

Sat, 30 Dec 2023 17:06:48 +0100, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>Your driver suggests it is compatible with 3568-vpu.
>
>Also, nothing in commit msg explains me differences against existing
>av1-vpu.

Yes, this vpu is exactly the same as the one on rk3568, so we can
make rockchip,rk3588-vpu compatible with rockchip,rk3568-vpu, just
like what we have done on rk3188/rk3066 and rk3228/rk3399.
I will update it in v3 patch.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
