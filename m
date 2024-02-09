Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D71C48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 10:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+/cSIrrOqO072jRKmP00kuzZd8A47ckvNC2bnTIzuY=; b=DeqfnWCAYWLdc3
	28mF3xZTtcT72MRfn5S9SdVWrc6jelv6sjadwfVpTBQgiKY0/8KqP8YXlfe+qxMIZACnZePR+P7ed
	AZ23hxNatlZHYbShCR7T9RpTmor2d0BOvUC4fiatZeTBP/W1nz195+v3KaGZBczwx86N/67AsmTt/
	58t3WNq2LHivp5MIvSv86Eu9KFhZJzQlw6zx77ugKA6drmb/1AJqbAD/71ta+d7CthG2aJoOD0Uzd
	TShqHt86vudrUlnm6fGw3M5AN3MlW+rE7pouNT0OT6bfbbLGmBJo6M3RR2FUJeFEYKWz5ib5gk225
	6Z/E+YHRCnMxYzygEf6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOXV-0000000GmKn-17Wx;
	Fri, 09 Feb 2024 10:55:25 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOXS-0000000GmHn-0mPr
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 10:55:23 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a3122b70439so93653266b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 02:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707476116; x=1708080916; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPDCxvBNMC7jVwM9lF/rwisiu2UQZms91Q9LKR4ZUe8=;
        b=IUqSdDAnkRuQa1Dg3j3q1gcQDuEy1O1diROVR4wHz/xPH1N2hOalOPFMwqv7+GHJFN
         qjgth8GwN7x+YBkPbjuTgzjdmh7fDLRvf8Hxgsv4oDWMp6SQBDxcKU25AvaR2X8s1CQJ
         snzyymlAXyD+TjpV8/QqqxYc/hzjEkKcVTQVIij2glP1XWfhqu+MAsRc3Tc6juWOJRFa
         EQYdTHR5hdRlwVKnR/gVPrK5MbINKnlNsiYxN9NXs5YOX2J6py++J/GcVgPX8x9y06QG
         Y2/MMnMiKi83yBJagEDVZZNti+XoA3cBgC7d0gppFEhwRuNtpnuzqJwFG8inyHzALktF
         VYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707476116; x=1708080916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPDCxvBNMC7jVwM9lF/rwisiu2UQZms91Q9LKR4ZUe8=;
        b=J9KMLbJWGe8uBLxjcpJ72MqUlQMbg3nSY0CRNhJw475l9Qjakwr7c092gNd/LAnHrA
         ebXeOzY3cKvwZOMA/ZyGd+qMzzRDxid5Nsz+K8FzCu5PQWhI3XcqAFCv6Hs138vZEkyc
         SmU8Nw8rsumcO+CBJmmjrWRF2RFXxaMoHmzqYMi2WX1PeRPpbniZp7AiI95ZK2c3Z007
         bZRHpkHL1j9bmNhh38nJESaMTQRIrQMlP3SNvReys+Yupo6tJhpxsRRxonbykhcO1lit
         V1eYAoZvojM2XTAveoGFw0FQO47Ea8usI0cZP0UK+BSqAmlaErSRwrJC6KW7KQG+yUNF
         lw9g==
X-Forwarded-Encrypted: i=1; AJvYcCULAW8BUXwJvkz0MIXra2Yz+cxGdyD/mx0bBKZ4x7bmZm7V7Nr3SAzACQdSW6xnw4pUa6kbxkGlXgw6F8ICoYKweOpZnrBd3q+sRPYJC1jUBm0L
X-Gm-Message-State: AOJu0Yxn8lTWGAucGnzOVk21CSn15KARB/v88Qi9+DpyXkctK+D5O9qi
	VfEzCMKA/yDWu3teWfdbBQG55937TfGj5awJgiFjf0a4/IIlLXvJ
X-Google-Smtp-Source: AGHT+IH8fQC4BYcatf4eNnFGSb58UqS4zJtebYfp5Tkvc0uum0cdKtMKpIELju2LqVMZ4Dh9GK/KUg==
X-Received: by 2002:a17:906:f9d1:b0:a35:103e:3614 with SMTP id lj17-20020a170906f9d100b00a35103e3614mr863231ejb.52.1707476115517;
        Fri, 09 Feb 2024 02:55:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0W2ig//yQ03IYUX8CzVxAEgCm8ndS3T1j4w20EZR4F7pSO46B0Ssj3CYd8S2QKwCcARm6ki3u9e+DBebFxzoEmI0oAbFUYYnNmQnIfRpW9iMLjJG04+63v/Bw70+28ySDWZpJTWzL6cI2ZNkUJZJBwsdxGXcv13Cex5FSXWQ/rA9VbY9FqqY9gqP3vr4cmM/C3FOjfKS8JqLEr7MLEXtAgcq9EhKu+atw3ez0PoqAKQG/JmJIV2N3c6/pHD4PEA5X2XFnqx8RZrsvXH+e/FBSspe0y9uDFUUpbR+LzWYkl9acy+GflcK9HZwzgdhL5XJATWhk/+YNWJSYJgI+XFcILFpe3zGY7mon1YpeqDQFNax5MEtzOpB5DFscrKJeiFJa/7oEMJeHdR8nIb74rJbhsoPHQM5vd0oKFnfn7QtJHpVf89dKVi8weQbjAgJ8g2mC1rBg2UiWropsPA72suo7mEQ2M8/tfdoGloKbAuI+XKt7MyeE0A4AUXuhmNfplAnS7k3f5b8skGR7wFI1yF/DOwTR9dk2x5l3vM5QHJJa/wXVNHmAM7ZtMSHzOAcf7sB/1Dk6rr6D6sBvSBih/Yi7A3mTIUvJfrTMeAH3bu+fBav/NdxOlr0OWM9Aut74GPCsiTwnDNmslfl6+GV9NyNqTeUeLd6jND27dWT/VhjfxwKpej42Iobb9GYk/l2DwagtHAj1C6DTy4Tyejx0ACCc3UnkebndWh0nS1SilTf6sRtD17hmcAGj6yEScljW6quvxOQyxq1rGybRxq+XfDHNKiGkrJcTfhs7AOxIFi8aJl3Fnj8/k/Q+dBj1ROIQhnjUeOw/Ex01Ynamfb6VACenMHuYjs2DjUiRQe5nrAPgYOyUOHlpV/SI9NViaJOezY/A87rwGJG3CngeT5OAMkMDIqpvq62KcNN+aLUv/t7qFkaBjYyzTSgLR+iN0DO+phbXFZ
 pZJknOwjoo5SfgsL5gCYFRu5BCGxsd7nqNZTS9Hzq/tcc4IS/I7MGp6eiH+iCXIfdGAUgh4wOUbiOFGVsT9Z4idnsbB4hg5CGFiXSz6dgATKIgfsFvnmH4aQsC8iOJY2gmUAl3aIcQoEvOGdClgxelpZRKICgoSZzGK6kDqTQ6vgChMcBthxj+Rdb0aQRz1GtwtU+RcgF48fqY/UxEv4oUdUktTlEpJvnVT+0OlR5hZMlrAkTb4orEqBQKit/397dC5qzNVOLhyViUGFZVmUj8RcXSSScjXz/1Qn6eg+H7iKlae2EqEcdkYUiIBH/c/9zREOdzHiAGPOLatjckrAsePGDqYRUI/w0KCpzynCVjY1wV3GpyCS/noMczEQKDj7rAfUyB7PzDOalH/Cd8ScBs3aHXlv9Eo6z+MLOLKzJwD/e02tmzYjM86xU4WeM23qznU1N3jw777w==
Received: from jernej-laptop.localnet (APN-123-244-98-gprs.simobil.net. [46.123.244.98])
        by smtp.gmail.com with ESMTPSA id cu7-20020a170906ba8700b00a37b795348fsm629101ejd.127.2024.02.09.02.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 02:55:14 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io,
 asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com,
 cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
 dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
 iommu@lists.linux.dev, jonathanh@nvidia.com, joro@8bytes.org,
 krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st,
 mhiramat@kernel.org, m.szyprowski@samsung.com, pasha.tatashin@soleen.com,
 paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
 samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
 thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
 vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com,
 rientjes@google.com, bagasdotme@gmail.com, mkoutny@suse.com,
 Pasha Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v4 07/10] iommu/sun50i: use page allocation function provided by
 iommu-pages.h
Date: Fri, 09 Feb 2024 11:55:09 +0100
Message-ID: <2718393.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20240207174102.1486130-8-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-8-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_025522_236416_7E2D41FA 
X-CRM114-Status: UNSURE (   5.97  )
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

Dne sreda, 07. februar 2024 ob 18:40:59 CET je Pasha Tatashin napisal(a):
> Convert iommu/sun50i-iommu.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> Acked-by: David Rientjes <rientjes@google.com>
> Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
