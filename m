Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC58CF9C64
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 10:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq1AXwJUrq/jX28NVp8C3E59u3DetOSSzQCpNY+A3gw=; b=ccbAkkPrujkF+T
	aPBnEBj1yggTLx3x0MHnOgFDjzAL5/nYTq/R7/v3fqpz2v10Q7n0h4IsgVFlUkQGoqk8lrHoG03f4
	equZu4LGUbN8GBzXQgSqFY2+0dC3IO6D7JTGDMYPnxd3OtbFSnTXZakqN1wH1eXZ8DdClODpl7Bhi
	I4m6BNf/A7/QgxGGb2/HjuGa5ALV4e1WFNoK8wXIb8yO2mBHmE9Teupbw8KqqWwEjM1gsCkKnyu7J
	KYzkrZWR7DXZKBdUTQf+PV3XQJyV44mYmoDC3WSj0xcFlC2x/OADNhuf4Ly7VvxVgn9MGc7feo2RP
	fpwnDN1KiK2U+lo8VcsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssKCU-0000000F0up-3Wiw;
	Sun, 22 Sep 2024 10:52:22 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssKBM-0000000F0no-1vsR;
	Sun, 22 Sep 2024 10:51:14 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-7198de684a7so2639801b3a.2;
        Sun, 22 Sep 2024 03:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727002271; x=1727607071; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfaKNPUCoZktFoxA7ex47D6NTps/yVQORN1Hk0vnOKM=;
        b=Cwes9vHrd5z1Rqys804bK/iHxkYNICySaFuYVsbuBSxl3/nTOottcgz9vvinQQV7LX
         1/+y21bpxqluK5rUNJpuweF1oGdJE0H0Q4Dxw1HRayyeZL0KyGg5CFq3blh8Wh1lnoWI
         +M57O8c3oUiA/QQprG9qdbU6x6xnfOyKTNqNLUZixtehPEeRvnkxzYswn0jhR2M+gabH
         owK26OGENz4nRm6EoSVWsrDizw6Xc26RNcpS9/cTjrNWRIsvCN+Av6YYV1dprQBwhyBE
         6XkGgnyJK27JlKLinNh3+VDIQ3Wmvm/mMbZrxlFFPhyrZyPmMG+/wVW0ilKXt35T/CQg
         AFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727002271; x=1727607071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VfaKNPUCoZktFoxA7ex47D6NTps/yVQORN1Hk0vnOKM=;
        b=r/MnoaLeTbyGlhjhMG9D3vFhrf+USZeC5wG+jqZtIVeINA4wY19V9rKhOjv8cuX/Vw
         c9/zyJDa7bJrIYTelO6eIDCdfNNZEczaD/8Gc5AZkPkgqQTaRnPnQ59sB/B8Pjr1e5si
         aon+EK49gspbtEKDdK0MMtYbqJ6JoXXV8hU6EJCFYqKOoIkb5IE9/Z335hZTAifxwkwu
         hGCrZfdZS4VnAe8pRolCa3IaqOgZBI3h6eADXPyYwRP3ldbTch9kZ4RXJSq5J+Pa3LnL
         VneSORXZG6+9rft0bIya6tJ4ipT1wOP6GpmL2RbNRrmPm6X8atQhJSZyGWiCVDNUVVjD
         SEoA==
X-Forwarded-Encrypted: i=1; AJvYcCUGnBylfqwpORSg+aXVho/+zwAV6W4jod1qA/u/yKqdJSCg+qIsv/Zu7B5JGLFoQ2KvSokWv1uB1pt5wz6wjV0=@lists.infradead.org, AJvYcCXm6mrgT1nI1JHsTKDSs1nbT6imnCrn0shcT7het5D8JYeZq85qiemGdsGNlyMbUIF0ind1wlgIpoMQ811tPVk3@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/z5AZYtqm6vr5orMA/6nuKDrAABsZSNZsasLXeNaD//xPg8CS
	E/l5t76xKBokiyLL60qYgYjmSJoqKUgKEGSxFa/90OutTPSbvOEM
X-Google-Smtp-Source: AGHT+IGRjH0l99ssN+QztozL46uT4nQHpNyyqkPhdTF07mheLJ1v7yxUTrAsF65SBGlcz3QAtmY5qg==
X-Received: by 2002:a05:6a00:1818:b0:717:81b3:4c7a with SMTP id d2e1a72fcca58-7199cebcaa9mr13621819b3a.24.1727002271429;
        Sun, 22 Sep 2024 03:51:11 -0700 (PDT)
Received: from localhost.localdomain (42-73-147-23.emome-ip.hinet.net. [42.73.147.23])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944b7afaesm12300497b3a.130.2024.09.22.03.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 03:51:11 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: didi.debian@cknow.org
Cc: andy.yan@rock-chips.com,
	andyshrk@163.com,
	conor+dt@kernel.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	minhuadotchen@gmail.com,
	robh@kernel.org,
	s.hauer@pengutronix.de
Subject: Re: [PATCH v3 06/15] drm/rockchip: vop2: include rockchip_drm_drv.h
Date: Sun, 22 Sep 2024 18:50:45 +0800
Message-ID: <20240922105045.157612-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <D4CQTRYUPQHL.1Y42CT0P8ZOWQ@cknow.org>
References: <D4CQTRYUPQHL.1Y42CT0P8ZOWQ@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_035113_221690_C8475944 
X-CRM114-Status: UNSURE (   8.98  )
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

Hi,

> Maybe ``From: Min-Hua Chen <minhuadotchen@gmail.com>``?
> 
> It's very minor and Min-Hua gave their 'Reviewed-by' tag to your patch,
> but they found the problem and I thought it was just for practical
> reasons you made it part of this patch set.

Yes, you're right. The reason I reply this patch is that I am not
sure if I have to do this.

Please ignore my mail and sorry about the noise.

thanks,
Min-Hua

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
