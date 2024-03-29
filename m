Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 756B1CD1283
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 23:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mmnm0K9r7qVUz0/UG71SQrY7lYH/yuzm5MohOeZTFiQ=; b=TVmq+qzthbKUTw
	w1meqm3SN8rSn0UhF4refoG/GCe/ei5vgmkPbtd0ml+suworbUsOnICZLIQD815zu9qlU7BuwDv3z
	aoLpVn0fjwizOPUDFbb46bM92k6z94rTfsmIn8ajDfmBHvfwBgVRg4GhNs/orSGABieiiCMCYrFn8
	ynl/urjYuNCHAYFTfIBXRhjHdSJaHtGISqsn6ap2QA1/l+0Vmd3DVB16DG7nbizsvbRLn7mThyaEU
	YXTLuOxHNDv7UlVDg3nL8o7p6bpk/kZbUaLr9LkagTwHPpc2AFxtzLPuR5zpD3jH2PIUF2uVdwv+O
	KVAaB5Hs/cVeEOIPKQjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqLV8-00000002Hgm-0fgA;
	Fri, 29 Mar 2024 23:19:10 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqLV3-00000002Hfs-02D5;
	Fri, 29 Mar 2024 23:19:07 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5a46ad0d981so503321eaf.1;
        Fri, 29 Mar 2024 16:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711754342; x=1712359142; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vnGFST8g/D2/54qEF94dGguSEUSHy9NC6zJgvdLnJag=;
        b=A6w3JjMroO5dWLnoAXVAYKXsdGd263G0g4WJclfLSgt7FI+hAfzoKVyB3aqfK0Krbq
         qRHK0UFcN/YpBvbqr8B81SnLTwPmHmoPUvLLmrqGKjAdcZiTzbVrU0CtBc2CsLbMJp+H
         qEayhIdtjzVmthr1MEb2cJEC7yuQChcDWhze3VoEfW5seJO3+2LgblJUPfVBbYZqACGI
         cxlAdsYzK7fsehJ4HZQgyJAgvong+c84ZAku2UEEIoBh8qMNlWT4khC17VuZWSp4bySy
         KrDei/CJD1VxgficRG6qC0vZTLUe/vAxeFgv07J00P4WIBMZnMcW00lsBkJLEAJLIHfX
         9GmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711754342; x=1712359142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vnGFST8g/D2/54qEF94dGguSEUSHy9NC6zJgvdLnJag=;
        b=ak9+xebwXiMkoQ4eqpMXVkzG3rJ9TG/GfaPwTZJGGPQZjhQALRSRlq1LVzq0naXZ1Y
         xL6cAfpNLNM3My6B1QTVXuicja+9ii3HIjsyiSzsKu1S9acOfKkHlN9IRwEBdGYUldoz
         3WZR0n2uWPK6Py5blpJ2kDgWCf7rsKpcxXlLPfLtpLI4OtvfiDfEPQ80+AZxXqobeP73
         ENbylkF34JY/NriCHtU7Wnnxj5igbnhYuhipOkh1mkKY5czw3IlkZKjtmF7WQ3ApckbD
         fl76hgXIXfagBZqsVrMj89c4zfL8xSTwVMrus24hrOEG8xNNOj8BAeXd+wMEAmremRM+
         FWKA==
X-Forwarded-Encrypted: i=1; AJvYcCUfl40CWLmyqX0s1kXX1/EPe7BzGuIa6XtJAKazNHFy6upmzjthyqnCKeUNIEF6rX7jcCAueZrxlldphOZJltPV+Tlpto831g3i4LABG4i+U1QBLbqeDa7qbPLkDoKCplpTTf7oAHAnsXOsgGDOzrHjywzgNmaheTM=
X-Gm-Message-State: AOJu0YyDLCcucAkdFqgH2p5CRJHmsYqRZ9Ci8WxDcgnOjqwX6mqD2IH5
	CRJN7QzYdcQeQqJLJp9L5iaD3KkdORpxTP0y/6KVnecBJgb4kb/YPNO9zSFEoB0=
X-Google-Smtp-Source: AGHT+IE2db2L9WUF+xM4vQcDoAeeD6O2XDyv0ZurcW/IrEcP8yVCzcBmxiAcZhOdkPb1TwQajv5big==
X-Received: by 2002:a05:6870:9a05:b0:22e:dce:39bc with SMTP id fo5-20020a0568709a0500b0022e0dce39bcmr1557265oab.3.1711754342219;
        Fri, 29 Mar 2024 16:19:02 -0700 (PDT)
Received: from SDF-ThinkCentre-M93p.localdomain (c-76-17-255-148.hsd1.mn.comcast.net. [76.17.255.148])
        by smtp.googlemail.com with ESMTPSA id cm9-20020a05622a250900b004317485a4e9sm2044266qtb.66.2024.03.29.16.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 16:19:01 -0700 (PDT)
From: Shimrra Shai <shimmyshai00@gmail.com>
To: jonathan.cameron@huawei.com
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	max.schwarz@online.de,
	niyas.sait@huawei.com,
	shimmyshai00@gmail.com
Subject: Re: Re: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C bus
Date: Fri, 29 Mar 2024 18:25:28 -0500
Message-Id: <20240329232528.79332-1-shimmyshai00@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240322103521.00001a12@Huawei.com>
References: <20240322103521.00001a12@Huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_161905_084588_B89B777D 
X-CRM114-Status: UNSURE (   9.26  )
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

Hey Jonathan,

I just heard back from the firmware team. Apparently, there is rationale
behind including the clock bindings as part of the _DSD_ - it is because
apparently MS Windows can also run on this platform and it expects those
bindings to be there to configure the clocks on this platform. If they are
changed, it will break that capability, rendering it kind of moot to use
the ACPI boot which is intended to be universal across OSes. (I also wonder
if NetBSD uses the same bindings as well; that OS can boot via ACPI boot
without much issue on this platform.)

Shimrra


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
