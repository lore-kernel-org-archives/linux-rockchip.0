Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD71CEB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 07:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7LV5eSCCfVEkhJUh20Cen0AFnHLKMlfkoUmO7nu/1WU=; b=XYD5RhDpc0oBar
	BHje4lYK1sSah9qmQD32tLI50UZW+3osHHcb9YMhudnzQW8fXhq3WcYsR8BlvM2Sx3UL60PEx4T//
	n/mksOWhljJRdNwtBmIGahxtVsyD9Es+QaJU0zGxnuEYIzGbyqFBLZEwqkf5KtTqDT/1ojpd+4tLz
	tT9ywfDSvPyOUf2CtFo1B5lD0V9vAAcQ6kqGE3iXO7JtgMMXRZpgnXbtyuzDc4l9TqA0IsxgfDmsj
	NmgNm4uOr6sgEbPPUBnJyYxu/1piPvEPM9XJ+XWPChXb+mMXZubrzsha103Bb/SV8wQGSLcJUIwBN
	gmNQXT4Vj7jr9YaAUnWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ7XE-00Dxbx-02;
	Tue, 11 Jul 2023 07:11:44 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ7XC-00DxZu-0C
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jul 2023 07:11:43 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-66869feb7d1so2735237b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Jul 2023 00:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689059497; x=1691651497;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f+HRfPdNbemAMHJzpUwGfU6FG6qMTvaMgkLxb5q5cyQ=;
        b=IuVjFed0jdcR25f2UeOVaOCfr7YMauUJkrfEwZgo+hI/MBWQwvGi7fs8ra1uDTBsmh
         NGn/LgTh2y3q5G5WvV0BWxLnsXFN/pTmbhEboUguj514EGL9Tk3YNkTrKN9CBwgSNIZI
         iX2w4N9zZ/sLFwPgFMbIE1MTdmBcGZEcGKCz+CTnM0b6UImjQXstuW/CzB1xh3H46LXb
         E58Jxb6BrQS0VcZ84Eh8TytYoGXXzB4QyOvfBbKzTtoSqNqvKwtIjhGSCy8jwU+a88iJ
         tnsBIyv5XNVMI+drfZd3DIdXFwGQqjEloFeOOFcHgbhSigzp2zqg/Hf12+WL9kEolaCe
         5zzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689059497; x=1691651497;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f+HRfPdNbemAMHJzpUwGfU6FG6qMTvaMgkLxb5q5cyQ=;
        b=jLToNO3dRZK2+rWu3m8BZVwb8Uv4vhZNopQb54cmjOgjra91vDFPZELgA2Yrjd7meh
         x78SzQucCZ3pM9Ujixa0KrUVG7zhNYr5dTXKbQs8aQA+8jQsiqa6qLNLm9Jbc8XrKOk/
         fs56szZBhx2P1Azjd/iI7bLi9uZD8kS04PwYvfhIRr+7iP2mzph3uSanr0h98f5LjUbI
         MN8d2c7vw8otcvIS9KVF+mUAAPwbLwhOd8wAFSS0CdNjeKIHBjnUOJSBTDzBWEeWAwQN
         UBp7+kaenhCbH/9zL63xuEjt45aC6piGGiVWYuDnOLJEXwLSZP/aEq9xQabc6YBLy4WO
         7p1w==
X-Gm-Message-State: ABy/qLZkyam0rjtqh0L4b6XQqdIWbeqQq2pdR/eOp/y6oJG7DmMV7Ln0
	elLCRDl04uZ1b4E1Yyrh+9gaSzMFRAo=
X-Google-Smtp-Source: APBJJlEhCX/8jonHXnKcXZ+EHUo86IIc05FYgEKMmnQulhN1eGsjT8uVTSvH6RTsuoFZME40d2EWYA==
X-Received: by 2002:a05:6a00:1a55:b0:668:74e9:8efb with SMTP id h21-20020a056a001a5500b0066874e98efbmr13422724pfv.8.1689059497511;
        Tue, 11 Jul 2023 00:11:37 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id x2-20020a056a00270200b0066a613c4a58sm974469pfv.102.2023.07.11.00.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 00:11:37 -0700 (PDT)
Date: Tue, 11 Jul 2023 12:41:32 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: skhan@linuxfoundation.org, ivan.orlov0322@gmail.com,
	kernelnewbies@kernelnewbies.org
Subject: Seeking guidance for Adding ISP Driver for RK3568
Message-ID: <ZK0ApOXkmkSO98kM@zephyrusG14>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_001142_095804_6408A6B0 
X-CRM114-Status: GOOD (  14.35  )
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

Hi,

I am seeking your expert guidance and assistance in adding the ISP driver for 
RK3568 to the Linux Kernel.

Before I start, I have a few questions regarding the process of 
adding the ISP driver for RK3568 and upstreaming it to the Linux Kernel. 
I greatly appreciate any insights you can provide on the following points:

1. Integration with existing RK3399 ISP driver: Since the ISP driver for RK3399
   has already been upstreamed, I would like to understand if the ISP driver 
   for RK3568 will be added to the existing RK3399 ISP driver or if it will be 
   a completely new driver ? 

2. Upstreaming process and staging: I would like to know if the upstreaming 
   process for the RK3568 ISP driver will involve starting with the downstream 
   driver and adding it to the staging area. From there, would it be merged 
   into the media subsystem or follow a different process altogether? 

3. Permission requirements from Rockchip: To ensure a smooth upstreaming 
   process, I would like to know if I need any permissions or approvals from 
   Rockchip, the manufacturer of the RK3568 chipset. If permissions are 
   required, could you please guide me on how to obtain them? 

I would also like to mention that while this is my first time upstreaming a 
full driver, I do have some experience working with the media subsystem. 
I am willing to devote the necessary time and effort to learn and contribute 
effectively to the upstreaming process also I have Rock 3A development board, 
which will be helpful in testing the ISP driver. 

Thank you very much for considering my request. I eagerly await your responses 
and any direction you and the mailing list members can provide.

Thanks & Regards,
Yogesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
