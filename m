Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD197C369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 15:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7ugCpN6YYZGhIWqCRJIwXddZO7eeRMxWbMbEhKZS7Q=; b=sDWV3u9+LORgzo
	UABznKw3EKUwo+xikVa5MdA+oQjvmQETHIzz1k83tE3V5//sAFocnyunBJqe+IU5VYn8HT7q9+hKq
	dPdvdOIIXFHukYgGwOxk86TWmHAvsCARzzNegkIniUZ2Zyji4/SjB1JJCB6T9supwVacUJzhu1iyd
	tRDWsdeMBAkHq6U8wVq6grFnqYh7fN8AJHc+Q0Jz1YVrgEtpmSD8exsEoFhCOrXOLPUsLl/8MySO1
	quwN5rJdOsUKzBtyKj1KyAcA7WIeyeo4ha9q3ZfwrD+uxUqqc48w9C1hkK5uuCKtQGoXp6T+vTnKw
	PWmaaVuzqGM9DrGWYGdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u93lU-00000003iSp-0FNi;
	Sun, 27 Apr 2025 15:17:56 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u93lR-00000003iS7-1jls
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Apr 2025 15:17:54 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-af51596da56so3233094a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Apr 2025 08:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745767072; x=1746371872; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6wXrjzsVf3DH1Jrc73Ekpfc7PLUWri8Lq7HSEYSNfM=;
        b=dycefAmjFNyhdkdN7FJz2Y/PZ4EqQyj0t6Yxw4CKEFnMMWd3Zen4nUZJA5jigo+hbp
         o8hroqx9A3pajFertE6jreVGrDdskeLJcbjUf9xwFU/q5feMoEDOCXCSJcm9GltrrE3F
         i3IQosgaPjmlojzHbr7gCb72N+zOuwLpP8mqxShmtR4baWx4T6vEipiorY307zC4QSAj
         zSl9GFwKRVkFw3uAnCPO70ZvzoHElTtRGRHblNg7ValGET79Hg1NgcCBnLB23K2/NW1n
         NBCAEvyCkZeM3zjLevMoU38XKbNyiYwe4Vv5dOSHFlNg88CY5NICJHl5j/iESaKyfOKN
         GmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745767072; x=1746371872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6wXrjzsVf3DH1Jrc73Ekpfc7PLUWri8Lq7HSEYSNfM=;
        b=X+KOHYOPL5P0TgLKD+3xaQQOCbQ9MwIR8eaTl91WfQsIE9RqfdKs4cHh1mgKoWLkVY
         pzEibHSIXO3Xc82cUe05Y3673TiHKNNXpY/UYjUh9y4azpnnhVSk5Q9ZsAZpwNKSZE8m
         d9xVvV9WEI5zQIcG9IzQPCd7TvuhehqpDUjRHO24MunwYXGWVsWHURq3IeA74zIsmnZg
         J+6x+Qy44jvymFmFjWVIOQk7GNW8OBb79CzM5yDr2vYM7cs5eAHhzUk0HJpgIidhL5RP
         UP2e1QiI66QCZU7PTfFYVEnlsQzU/cy3yczHVzwpwO6HQdTxCSHf/kpK7m59Hg7MJ+ud
         mkXg==
X-Forwarded-Encrypted: i=1; AJvYcCVYKwWsnLJP3zh4AZWZAjbNpuEizHWY/EO4O4HsbPQU0MxB5sx0HBG1M3PdkNVNuVd90m7GH3FEpA8u+rB/Zw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWPq+k++dv+ACtVH2aVB0ADRSSpI0YOUke5SdtxycRob9gKuRT
	svq3q/UQaV7DzD9p18PkPx3TNz4PwIHSSt6mGPmd19q1CQVIzFVvwTXtCFn5OQ==
X-Gm-Gg: ASbGncupFm9wFtP+6zxS2GADenn8dmdoL/AZHZVXMmZpMpBBKHibsI5F9XXK5L2TRTz
	7YJbNpdFQmlGPs64W2puXUXYVE4dMd2uteerEVnGLMWZ14hVDsFkbvLHrYucG4lwfx0VAhHmiwp
	9EmyyhwLlP42IjRJszT5v5eWqCoMORyvga1aSrp5sTGKcbRuCUjghTnrz7ejeAK1HjiB6ZRJePG
	fztEAeGm2M0MLscA3Sn45c0b3CQt6PHIZ9qgOhXavYAjAB/SXG2aql8oDbt0vHR+NSiZGeKptWe
	dHrZ1ZI4Y8KaEYUDUi2wFPzEqurfiaXyv2MKyhQfPQRe+kAAH/X8
X-Google-Smtp-Source: AGHT+IHsKSGV7qVUDINwXMp3Zeljydm0ITfFLTON/CQSAoFjpJ4D36vJUKUIXlOMdJUWWo9Rrih6uw==
X-Received: by 2002:a17:90b:2810:b0:2ff:502e:62d4 with SMTP id 98e67ed59e1d1-309f7e8ec70mr11258975a91.32.1745767072425;
        Sun, 27 Apr 2025 08:17:52 -0700 (PDT)
Received: from thinkpad.. ([120.60.52.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309ef124cffsm7834594a91.32.2025.04.27.08.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 08:17:51 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	Hans Zhang <18255117159@163.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	robh@kernel.org,
	jingoohan1@gmail.com,
	shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/3] PCI: dw-rockchip: Reorganize register and bitfield definitions
Date: Sun, 27 Apr 2025 20:47:39 +0530
Message-ID: <174576703760.21368.17997982524874077646.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250427125316.99627-1-18255117159@163.com>
References: <20250427125316.99627-1-18255117159@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_081753_465318_097C9297 
X-CRM114-Status: UNSURE (   5.52  )
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


On Sun, 27 Apr 2025 20:53:13 +0800, Hans Zhang wrote:
> 1. PCI: dw-rockchip: Remove unused PCIE_CLIENT_GENERAL_DEBUG
> 2. PCI: dw-rockchip: Reorganize register and bitfield definitions
> 3. PCI: dw-rockchip: Unify link status checks with FIELD_GET
> 

Applied, thanks!

[1/3] PCI: dw-rockchip: Remove unused PCIE_CLIENT_GENERAL_DEBUG
      commit: c2f61b8479b2abcd9e20f8bd4c46e54bb7f5286f
[2/3] PCI: dw-rockchip: Reorganize register and bitfield definitions
      commit: ae8ed2b091ee8bd92da365d3332eebf159de8e0f
[3/3] PCI: dw-rockchip: Unify link status checks with FIELD_GET
      commit: 5e5a3bf48eed8d90bc5c5b710466f24663231f0a

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
