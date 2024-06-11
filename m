Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 302B0C27C5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 09:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkKWwzZy0ZWW5caeyUnlkMv87KPD55AaHI19Kcc/aBM=; b=GaZ96r49V6lOv1
	r3dds+L3AR02IW3ehcYixuvsnswI99ku/Qh1CF7JtRkTDperlLQ6jw31ns94NrcnEykLXULhLyetr
	DE+jk51lqSSefZV9KciXvtI4Q4pglJp1W9OauwoB+S5L9xizV9gCNFJ/Of62bhyc4E6qQX2oFbI8c
	M4c5jsB7RgY6wMqWxJuWCU0cKuTZGcwRF4KiAKzdWP+bh03lhRacpJXmaCvMOX4PRGMscE1u8K0Af
	GN/Un+DQBuZBnBVjkP0k5LtThdzRGJPY8Q7SZJ0U9Qt2U2aaOzW+fYvtglwCbAawsEfFaMq/XML8N
	6i8hmuXJZAgUbuBlVfGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGxpc-00000008Hw9-3XLr;
	Tue, 11 Jun 2024 09:30:20 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGxpQ-00000008Hos-3be7
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 09:30:11 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a6f1da33826so108712566b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2024 02:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718098206; x=1718703006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYwTeOx15XiM1cO3X3rFudAeXPUDdn9iEuiRZ/UR+9Q=;
        b=vfROyX2ck7KdaOw+r7Nevzsm60zBrKsrfUJJCqiefAo0YIcHrlD+d1KU3tblxgW1Zn
         lCY2oaOR6/xG3YiODuzXufEM487X9eRojrGWfSVWrxXWShuVmdFiXC8xdjJ418xWf2r7
         +vdNc+HmlcQkgU5FxRLPNZI07a5k8c66i1d4My/iwAJAfDBRfAScLmGEgMG9S50Aa1JQ
         ro3YyF8o18KdFUqBDSu87kzk4y7eJx3v3sstpkZncZTuTY8DpxUTxfqxvRuVRUJRBADI
         bTanKt7aBly3hR+Q3/1KNabW5O+RPnSWGw8Z4nOamiqNUt9EyRlLH6zW4UMLzbvxkPA7
         Kqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718098206; x=1718703006;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYwTeOx15XiM1cO3X3rFudAeXPUDdn9iEuiRZ/UR+9Q=;
        b=j5coeXjhfjDqfFtb70Oc6EPOnt/Ob94LT9DL1rA34FNkJx859V8isTjMHDPygeXOPY
         ct7pvlxAsNUGJjvaMN0yPua0qnFw0dMkac5IGKzqauXk23sSVEaS1LpwhVVciIww21U1
         yN1pdjkGnxVk3Bx4+UOCDx13J93N07zMd4zlGL6azxYPG2TClWB7wi5+sl2p1Tny+P0G
         VBYknKqbCaa+KND1zpth+6CPixDb3rXSkVVQwqRCOru8n3Xg5awdIZ0V0vx7/VkUj1hp
         oBXTEXAoez8pjgsC6W8yiv/YvvRY5TDdllL9tFQ8HDgW5vMEA/P+Ps08fL3RjnrIQ9yr
         rOdw==
X-Forwarded-Encrypted: i=1; AJvYcCVFWwZ3lQ7yMNNYgCuhQHXhKyXKPyMUcwNGnnUi8ntjEJp2eklledbkQWLZHTSR3N5DfWagD63G4kXgBbhtOxDQ8Wo2Brpuo1KVhepwi4dIUdfj
X-Gm-Message-State: AOJu0YwI+M0Vb+CKUYKEJF53yoL4K2nKYfJg2jbS4t3fDvm8n6699v3N
	I8Tvk1Wm+2MAfkpkfOA6fw6vNWlwWM3EC6xzJccA7LKO0PgyEYfQnxKlHEuwH15d9+fqNsu5SQa
	pwU0=
X-Google-Smtp-Source: AGHT+IG8u11F/w8MKZrcJa0IPQI3BlkZm7Vsfe3fiOz5lykU9FYa3FCQvw0EKaTXu1w3QdFV6Dxqlw==
X-Received: by 2002:a17:906:5608:b0:a6f:722:a1a7 with SMTP id a640c23a62f3a-a6f0722a461mr642345666b.67.1718098206066;
        Tue, 11 Jun 2024 02:30:06 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c806eaa4dsm735715966b.110.2024.06.11.02.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 02:30:04 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 quentin.schulz@cherry.de
In-Reply-To: <20240507122256.3765362-1-heiko@sntech.de>
References: <20240507122256.3765362-1-heiko@sntech.de>
Subject: Re: [PATCH 0/3] Small changes for Rockchip NVMEM drivers
Message-Id: <171809820467.51273.1855586931419664049.b4-ty@linaro.org>
Date: Tue, 11 Jun 2024 10:30:04 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_023008_959563_72A98344 
X-CRM114-Status: UNSURE (   8.89  )
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


On Tue, 07 May 2024 14:22:53 +0200, Heiko Stuebner wrote:
> When the option for legacy cell dt layouts was added, the
> Rockchip OTP driver seems to have been overlooked, so set
> the necessary option to allow seeing the cells again.
> 
> And two patches set the nvmem-type option in the device config.
> 
> Heiko Stuebner (3):
>   nvmem: rockchip-otp: set add_legacy_fixed_of_cells config option
>   nvmem: rockchip-otp: Set type to OTP
>   nvmem: rockchip-efuse: set type to OTP
> 
> [...]

Applied, thanks!

[1/3] nvmem: rockchip-otp: set add_legacy_fixed_of_cells config option
      commit: d4d688ed8f312dd1cf986c956251acf6176f5085
[2/3] nvmem: rockchip-otp: Set type to OTP
      commit: ee65a6c12badd3e0891c9096d6db7a0dba655c1b
[3/3] nvmem: rockchip-efuse: set type to OTP
      commit: bb503130de1212cac2c368b373b0192eb7c59ab6

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
