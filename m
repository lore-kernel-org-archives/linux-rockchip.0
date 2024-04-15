Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA45C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 08:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4HGT6gDiOzxjOFajvmTYBIZsxS17AqEu1ZhEO6rdP4=; b=s7UmXdQuWtqX4S
	SvuHxlqivnhspcwSPLok2iQvq1yVT76154mB6NWnPbHpZEVV63xh7oMdD+ZyXZIn7eKre0vBZ5KTR
	089e1FO94CNjej2cYWM/VekGMbdRl56FUYt9y/jhJPR7x4VdrYvUPMwTwBJgeFYerORSmbxpnTK6R
	w77dMg81RD9XHrEAqZncNidYG5Gd+J+mtdFTD3v+1UyMZ12XUwSQ3+tjhE6Fpqug0ZOUkChdSj4B+
	PVHCVuYonUR86Q2uLm5vA/oo9lTLO2P83B8S4nB2opGSouQ6OJ/Tiaxke/Gx2F90c6pT8VfLkqcZy
	q8PlOq92x+wGzs6AcNfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwI6m-00000007ci6-3Lzu;
	Mon, 15 Apr 2024 08:54:36 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwI6i-00000007cgR-1zEk;
	Mon, 15 Apr 2024 08:54:33 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6ea1a55b0c0so1650609a34.3;
        Mon, 15 Apr 2024 01:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713171270; x=1713776070; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s40uCXQURYbe0UBuprud/njSs0ZIWjKApDAezTTAv5A=;
        b=CdCtsT2PPn2Mu+gYzec6YVMuWg51T9Ahu98chT49OhSPSVUqV9PUeUmwbj2xnzrRC8
         iJJcQBO9cNip7O41Rv6+FPu0dvo7Vweu0GsXlkyb90pOkbWrXppJFX4bFhbd/cb1+DGu
         xzCDmApfUq1PIu3UZPV08J59ziGrhR7CM2/iyGwFDTjMufD7hW4yWILHZak0xCWJLkfr
         XrSPBUQ1sD2W41gZsyAFT2e3MyscvU6nEcB2IZFTDifNbpvAZ4sgK76toDao7FIT7phs
         QWRZkOJSmAzUx3veP5z4FOJkAhENwLuJ6HAo2LVQwYCeEptz6OfqU47ncp71JdSuxyTR
         rUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713171270; x=1713776070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s40uCXQURYbe0UBuprud/njSs0ZIWjKApDAezTTAv5A=;
        b=k7o7uaPJolv+mGrubb6Ye0jPYDOhpQ7xn4ZBB1XdEH2WDgh6uHzVFGG62Cx6jHTq1L
         Q9nl4lQYG8qJK2ctsiLjy1WQBdjsXTUvO2jcoMZ8ZmP7/lzeMIR5cZ2kuZn/QpLroSTw
         tp46cXqy3dbCfgnsCBCVbjS5/ZuX6C8MJlL4tIp02PEXIc0qWWZ0id/7RbbLq1NqNNtz
         F1Upt8q80yUgsWK/96CNtAn6wWg+kRHvKvhUXWdB2EJEzF93RiWZW6h55pDeZK2O8Wr4
         tlg6mmnZxbkAG0HO6g9Yut9QRB8hSqf2js+tgTPe7+0mybDb4Cm3xMFlGUjtKpINNuRe
         HNcw==
X-Forwarded-Encrypted: i=1; AJvYcCXKdqdSVIIC3WfjPiOxItuJ6z4y+Vw4rC2Lg+jqCqLJP23/Q5JEZpP/SRqwou2fyTgXZm0hflv5qzbYXpl1F1fUzc7w0Xr5sHi9HWVUEcTaMjvCMjE8LPXJqXSzVtnbwrLMfoZh7V0ksYq/qO9leWYBICHYjPdwj60=
X-Gm-Message-State: AOJu0YxeOkMovjeXFGcP5Jfdm5qpZuPq7a/qZ3zH71P6OmVqhl277xk0
	yYvyFiqnmt0kUqgNEgzlI060AbhdqPgubWF//V+166MVdsxpKheE
X-Google-Smtp-Source: AGHT+IFLGktyFceX77eS/EWTNIy/C/EEkP/6Uwj0JtLUM5Gch3gRYxudIsXV7Uwh5tX3uhb6kSATHw==
X-Received: by 2002:a05:6870:818b:b0:229:7f9f:adee with SMTP id k11-20020a056870818b00b002297f9fadeemr11347247oae.30.1713171270183;
        Mon, 15 Apr 2024 01:54:30 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id h11-20020aa786cb000000b006eadc87233dsm6786293pfo.165.2024.04.15.01.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 01:54:29 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	robh@kernel.org,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: Re: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Mon, 15 Apr 2024 16:54:19 +0800
Message-Id: <20240415085419.6107-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <dcda2991-90bc-41eb-afa3-14a2071a6d19@kernel.org>
References: <dcda2991-90bc-41eb-afa3-14a2071a6d19@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_015432_531155_B2F3EFD5 
X-CRM114-Status: UNSURE (   7.82  )
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

On Mon, 15 Apr 2024 10:04:14 +0200, Krzysztof Kozlowski wrote:
>> Add vendor prefix for ArmSoM (https://www.armsom.org)
>
>I feel some lawsuits coming...

The brand name "ArmSoM" was first registered on 10 December 2021, which
means "System-on-Module of ARM". Would you please explan it further
about the risk of law? We are working with ARM for the SystemReady
certification.

>Website says different name. Please use name from the website.

Sure, I will change it to "ArmSoM Technology Co., Ltd." in v3.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
