Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FBD1C7882D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 11:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:
	Message-ID:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l+TakioC2Z1MwYS88hKNv60PtzjxmL4rB2XGy/1mt44=; b=AsVjNGGsK7/AKi
	lWs+D9vf6oplOW32uq5tr0GH5HXGs6EoWBQW5Q9hAZXISmgZby1m+YYgEZU+hAcEJ/2wOrOxjFnpQ
	V6XsIYqCN8PY735xigDskHuZZ37Yc2dfOxS9nFNM/hkLJoLOyzfRBDVstxA0INF/bPlBsAeDeBbnQ
	zECbirXeOtCPLo4YiX8k+uhcHT7lBOocz99GS6yA2hdCdzyy0uRxhKjl889zHoJtdR6FZtFP3NLN/
	d1nqGpLnIbsRQWbQ49ERQUwj/8KF7DhvKVGXXgabjf2PdGbT73fonQmMY2SyrIyvlpuBe9trcV784
	a66NcVH5tEO9HSJmvTsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srcAZ-0000000C7WT-3Ku4;
	Fri, 20 Sep 2024 11:51:27 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1src9i-0000000C7R5-3UcN
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Sep 2024 11:50:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9443c01a7336-20696938f86so16286305ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Sep 2024 04:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726833033; x=1727437833; darn=lists.infradead.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
        b=Yg+W/4IVFEEGeXGOnPieG/8+N0J+uzH0yE3UeGC5PlrDGBoDMxmFndwk5pXrNjC4lS
         J0aIPkZpkDKa3pEAiVuBoj0aAW8p+j6vVjUWedqeX7Dj+QEWNo0HsiKhMAiZMpAi+ivh
         0Dxh7xXwQ8MCsi7Q0PPPOF5rT5DrMgIfUj22C4RwcdVvtfjJrC31/FG5lCcpOsFn0Ws/
         1cqoXl+6PaMyz1aaq0TkK0+foTLN+xLqeFlnTlfVRCeHNMhqIeOh5ISMHDCyXcbLD8FM
         iz08/U4mOeDzilQRinMAzPO1Rp579CkYS9sQz9nKZXL+83euK2VBRjPEmFDpmXP1wHGa
         hf2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726833033; x=1727437833;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
        b=VtFeMpzZeDbXGuqx2RuEAjoH9nhByouOHc8SOswFZ0EDLt7bkvWV1h3Zaep+WrGJrC
         HChKLsRD5IdBgWBLnyP07XHNSdtt93MMLXzcm/PzlEEeWKFAg3nP2szf7Iez2lVrXfRL
         GEdsCMNZmoPRLrx/k2P8NE8MyUFdqz+Ueq/kGI8nS2/NyFnVXmqbnXmA13CoImmbLP3M
         U92D4Sf4wiSeTbQeUGTMsN9YSNH0q88ijensHE9RsaMp2QwkPjsZ7kSEizh7iY5uHZgU
         93po7D9VuBZW7yfiBhCRB5c85x/08SnuNRodcd3Sadx2SR8dR7D5ZdrGEqqfh/Ee2s5P
         FP8w==
X-Gm-Message-State: AOJu0YwCyQ8F2VbkJv0lCG5fgXZSgy52VFKQ3U6FV4dlgXwah5heRs84
	LyzkRyaB1uDwcSu7JX9B61CzXxcU6tj4o9fPD7wbADhK1CcJeJAd1268+Y3a
X-Google-Smtp-Source: AGHT+IGo5vcwPU3ua78o10eN+LjFokdGECf55I+5uRVlEVPomzXMPjdobL/2I61362cqJ0hNhTKsaA==
X-Received: by 2002:a17:902:f643:b0:207:6e8:1d84 with SMTP id d9443c01a7336-208d986a591mr29862775ad.42.1726833033268;
        Fri, 20 Sep 2024 04:50:33 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db4b080b29sm9313470a12.33.2024.09.20.04.50.32
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Sep 2024 04:50:32 -0700 (PDT)
From: Michelle Fangman <sahadatbania@gmail.com>
X-Google-Original-From: Michelle Fangman <michfangman@outlook.com>
Message-ID: <a5554b36e19c4e8767059d0a2dbe753394f5eabdd6efb36be8b727ae5d06841a@mx.google.com>
To: linux-rockchip@lists.infradead.org
Subject: Baby Grand Piano  09/20
Date: Fri, 20 Sep 2024 07:50:31 -0400
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_045034_876788_4DE722A9 
X-CRM114-Status: UNSURE (   3.33  )
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
Reply-To: michfangman@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

I'm offering my late husband's Yamaha Piano to any music enthusiast who may appreciate it. If you or someone you know might be interested in receiving this instrument for free, please feel free to reach out to me.

Warm regards,
Michelle 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
