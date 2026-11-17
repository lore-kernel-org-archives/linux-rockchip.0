Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9A1606A32A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 21:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l/wHXu+J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=cyjCmlEd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4c3/as+EVYoNA9dx3caTuj9lfwsPW7e8PUFbgjzLjsc=; b=l/wHXu+JyHL99a5Cvfhvm/gbSn
	o3D6DCIA/1PBRzND22OMQt26oAW6MeKLG0AsIZ64TGywlv7yaqu/BOCeFDBkfrzlKnoNxikMuCou1
	TZHnk3GsMRv7DB4rOCYnE8Hl39HricxVXQBB2nCiuBH60B6zFcf06XrEbSdQF/kFT04TrCCS6g8Gj
	yU1jhauhHgoZIwOHEPNwiQSB4y2lLyDV7Wt66VfwD9g2zCmZLl5mKQ0adtFNoxMkP1bY3uIToB5sy
	lCXABbElSlSjfWjpn/M1pJbMC3A/tkRq9cXiF1DjfRLe4U7BuS1E79C5LxN/WAc8DDqHP8i6KHMQw
	HTMLI9zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR7i-00000007Ash-2jBf;
	Tue, 17 Nov 2026 21:53:54 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR7f-00000007Ary-00x4
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 21:53:52 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a5177d78c7so2901915e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 13:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794952429; x=1795557229; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LTgzw7Qx4yJlL2BwvJu8LETB7gbbjhmnMAMVPEMPtDQ=;
        b=cyjCmlEdrreLRMltM+jRivH0WPtxZKco1nrNG7n5xwO++St7AsSoLOGpMdtXL3d0Jh
         BkRZW/Nooof6kgXFP1ca9KK2/vZh4cO9ZN07Xeo8XTZnZlUOsw/ej3RfzGs+Omn5f+5h
         7ZuYwUVG97JLPB9faVs7G4oqChG+74pgUJcjTjByaqsomhL22xz74lEvXQTy2kn6TNP5
         yQw1IQYs64IEgnJc5GRQnOUizK1rCfSs5HI9F/6uyaZGhqgyFFierXgGfNm3dEd8Pl1M
         F/3z+NGeamjL8j3k+B6rSmb6xfCtMwHNFKIvQRgQuJn7Gz29bQBt+sFpByCSlnxvci6F
         jE2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794952429; x=1795557229;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LTgzw7Qx4yJlL2BwvJu8LETB7gbbjhmnMAMVPEMPtDQ=;
        b=CKg6DZwDMNEyPza0AeCNpjFEsjJ0k5iFoB6/SNP4RSvFWiPyR3TSPqDA/UG1tiTcOD
         J3aeFhZxQpMZ6xs+iX04lrZxOHNd6vhgUfmluOTgiuXxoC5NfpFOXqzIfNmgyXlXd6AK
         GHKavb+dQexjZWJq5ijjVrqlA0C1mKt+4cJxp+Nv9R9fELTUyeENHlhnKxJdhIYHTpyl
         0KZHICxXfD6eQobBzSIAw3A3bZwrG1ZS98sClXkg3qP3nO/h3rvH2DATdua4UdkgNcTS
         /7rBJ9HiM9aJATc/h/b7+c5GdzU5QycUCZgNlVV6oityPJ04sudJP5I59mERRejSqGSX
         EgHw==
X-Forwarded-Encrypted: i=1; AL+hErGz3xmKjqjP5BzozlU9cWCtoZ4k15hVrkaWtJY7tGosl0bhtLEYRpSZ90dC3a4/YxCVXCFTUJn300xig5/b8Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z/YW8d0UGXirt4NGH/lMW0yYT/2fSDDma4qXScRJIdOi9PaGFE7
	rg/1H1GoFPnXTiTAYMnZKzIpiBTpYIiB80yQWBJiv7LGOHvdbBj31VYeFaDpW0lFcW4=
X-Gm-Gg: AYBFou37J2Ssd2QUFfVaLbsnqlBxBT4AdABnyFlExrPCBdQVtzsEQdUB9EwPealRMY9
	X9XTIoOh+qvmOsc5/ZLSgeJ9sdb2f6wFZdb4UtY1E5k9PwbyHpFZ8Ud0HQ99zqZo9FxtgzwBgWw
	+OZzFyM1qBUTG/C0okiqHuaFbzyt7woRs+e5KasnKk01lOVpM0Stq3iJUyZa+eAfHfpn1/RdgNz
	tNduBtFzwIjmHWD/YzOUj7bMIlpAqAe1HPyy2HUdimTyssfmkp6R4fi+QkJFiWteezX8NcBS+GU
	p4YCVKRhesQXDwRgl6bk5NnXoDvm9ZsjGwyo8ZUHyRFWQflryA/sDLIkEotgA12Sek/DipcuJ1L
	m5+yxZb0LNi4cWkdEPjl22YvLXc89u5FgtWfAQeJlP6DPjEIT0XZoNmN+G0yaKJDTlw1puZ072R
	ZPJIraTBSZOIeNsebeFs7YlLGi6ojvTVK078Wq6Th0Ecqj5OSsh5kyGlzGeQImZP5JC5qjJA4DS
	402yfRkgF6kW8GU34milYoJMovBWlCT9IYcTj4eXeOqtGMTBAoTJ6ELQcmkGCpXrbGTCOZKFXmS
	dLCoIdRDHx4kNlYVKG3c7vHEIRdt87JPOVuczxkploLXYa9WJbt3xdT+WFuHi0YZJNUecQKY9w+
	fGQ==
X-Received: by 2002:a05:600c:6995:b0:4ba:4395:5755 with SMTP id 5b1f17b1804b1-4bb7da03a42mr9384865e9.5.1794952429178;
        Tue, 17 Nov 2026 13:53:49 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb5f350d51sm136099085e9.4.2026.11.17.13.53.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 13:53:48 -0800 (PST)
Message-ID: <0e722f43-f08c-4636-bf3e-0dbe991bf6a0@baylibre.com>
Date: Tue, 17 Nov 2026 21:53:47 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] accel/rocket: Fix the extra iommu_group_get call in
 rocket_job_handle_irq
To: Chaoyi Chen <kernel@airkyi.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20260814022453.437-1-kernel@airkyi.com>
 <20260814022453.437-4-kernel@airkyi.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <20260814022453.437-4-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_135351_084811_B11C65BD 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/08/2026 03:24, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The rocket attaches the IOMMU group in rocket_job_run() and detaches it
> in rocket_job_handle_irq(). Calling  iommu_group_get() in
> rocket_job_handle_irq() causes the reference count to increase
> unexpectedly. And this causes rocket_core_fini() to fail to release the
> IOMMU group, leading to a resource leak.


While there is a leak here, I think sashiko correct in saying this 
change would introduce a crash because core->iommu_group can be set to 
NULL before this codepath is reached.  That might be a simple fix.

> Fixes: 658ebeac3351 ("accel/rocket: Add IOCTL for BO creation")


Wrong commit mentioned here.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
