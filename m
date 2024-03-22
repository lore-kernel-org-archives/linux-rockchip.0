Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33967C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3W8hw+VOU315XpJW5JiCuXh3Bk24zr46SARsmWS99o=; b=1M1UlUx3GOOul2
	snl3CMjX/bV+/+PCc7nztiqt0FtrEWDwyWFXnMAetwlhX7Nr9DkT4J6WYumE/+KK//66H2hJ+/i93
	XhpzqkR4JP127jsimbn6Mz8+wn0UchLtqiWeN4hsIsjeuPQb9q0DrK3MNLbUbvtt3HznhKxguj/Rf
	qGCbDFL199/XKHxjo2Ehocb9BRb9vabeOCYYIESIjqCp1JTgtY21qcvgxTRrNj2r+vZcyiuSYT+FI
	IbFQjP1W6Nc8de9GRt7SMg0peuYNaJG5yEP+7ez/8Rsfjn0IZtXhXccuXpONIR5gLVl9meqTluXYW
	84D7vNqetsneT9JJQ7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnYgx-000000064KZ-3pDR;
	Fri, 22 Mar 2024 06:47:51 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnYgu-000000064Jl-0jLD;
	Fri, 22 Mar 2024 06:47:49 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5cddc5455aeso1148350a12.1;
        Thu, 21 Mar 2024 23:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711090066; x=1711694866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o6jZmD1miWV/FjVIa3UKpDCb81d3rX+z6soNykf2YYA=;
        b=gLslpmU01slhAgcrWRg5M8a7orNpL/S8SjQG3Eet/45O3hTN1neuR18mHPvtESfJYJ
         691SItd/mD8ANcR8RANq7iKTwkbd7DtZphByw/W7/DXlh6NlUirkTWRbG19TV8ODwcUq
         bINtuX81RF76KBbLB+RUjIaBEtW2yeuTy4SkKPOUseFZ4qOItuArA5JgQHjHpoDi8a5G
         /vEA8VQALo/MinptsiLCK0dDNzi+VQw1pYQYfrdq1vSgGn5fD6cAOIRHjmABEsDjeQcm
         Vn7CxH5rZHpzjmGQvbwtYQmI9zCzjPd8ZA6/Uus9s7pL4h35w0fTOPUhZ2FGcQOOXQSl
         UXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711090066; x=1711694866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6jZmD1miWV/FjVIa3UKpDCb81d3rX+z6soNykf2YYA=;
        b=ZDHrPaJLIOWybsXvOCLDevvIbjlm0btxJDt2p2G1ECz0IQXdWWawwH7EB7YSJUw5fs
         gflUt4TfUyuikzZZ15KhZeSaRmq+OSS8f1e/70TddmT8aslGd9Q5oaqSb6GywzT1BuNj
         SbO/hRj35OpEXZB2WYcF69FoG538FfZLlkNCMYIYIUaF0Cx4RkJAB7RkcI/KVMx4C/4T
         AlC00w+zLy0MX1xRpB8oQ+gMRxATzWZ95I+xFfBcnRtV2GyfmwvqjotBio/AcesXyxvV
         tOuAkHzKBw3dSLWVzXxJc88lDf8zPFra2lkdqPFLHqTj00G+/nZVVP3GWRCUwfo0Lmfg
         662Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIq/XN0DG3D8Zpk8FFRYHGmhDl1xL75ID+6OUw5HBG6vtpdo9W+fqgb+jKl4oLu0QDJGbCgch+G1o4PcsQFFU31gZ3xQS96QN2O70px7anaZGbfKYgpfcu62843tiuuXxhF28WP/ZqsR/gCezeX91AiBrIFVaultE=
X-Gm-Message-State: AOJu0YytCnCAQjACtKeK9rbPap4jhtPy3hXUBpGuvmxdgA4lL32HpR/q
	7h666PuueFLaJdndCUDhVhfrUIKdjs3kdR+SSIMmtvVb6vFPVeGpjZZmOKusweR6Jg==
X-Google-Smtp-Source: AGHT+IFc20qWQlBrqoDBDCNLhC24Jv7xPMgOQ4yQW9HjN7hAJhy6Gxj1UnPJWEjtLiBZyq7OT3qfBQ==
X-Received: by 2002:a17:90b:374e:b0:2a0:3d04:8513 with SMTP id ne14-20020a17090b374e00b002a03d048513mr479713pjb.43.1711090065919;
        Thu, 21 Mar 2024 23:47:45 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id ok12-20020a17090b1d4c00b0029df82469f4sm1117805pjb.15.2024.03.21.23.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 23:47:45 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: liujianfeng1994@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	jacob-chen@iotwrt.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mchehab@kernel.org,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: Add RGA2 support to rk3588
Date: Fri, 22 Mar 2024 14:47:34 +0800
Message-Id: <20240322064734.3509132-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322052915.3507937-3-liujianfeng1994@gmail.com>
References: <20240322052915.3507937-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_234748_234804_6CE100E2 
X-CRM114-Status: UNSURE (   5.63  )
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

This node is not sorted by bus-address, and anthoer patch adding hantro g1
with addreess fdb50000 is not merged. I will send v2 after that patch is
merged.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
