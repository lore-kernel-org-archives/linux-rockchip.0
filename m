Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E47C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 10:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGDFMY7aF34Fgnzi74MjkyzVttOkcwEqqrAgVlkgz9g=; b=0IrujDV6TKbORI
	u1YbKdHPvMHYzkpMzzdFiUJXKFWIDE5WXBI8AGUttHFfuCCsxLuLaFF0n55voyIgdMlNiZkjyHFj5
	6yU+cE/n3NutyvLqFyI1k5zCdgHG4x0eZnv0/CdWP3czsF79T9vqhPZAUfIApsMWJMoMHsnvX+xmk
	yEu2ze9YiVlshUoaA/zzGm1GY/Y7VG6lWKVxD/dWxMGOK+0c1Zrt2w3guMZk12lDAOPn0J/YPYeLA
	cSPINgBHhbRyfAoc7W5zwENE8DPfKXbNTg/efNf9iFbxCKg7FbRrTffvjgUhvWakxr0F7iZsOQl3Y
	PNqzHCK8rjHRKupi1jJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgA1-0000000BpG2-3Grq;
	Tue, 16 Apr 2024 10:35:33 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg9y-0000000BpFG-0oa5;
	Tue, 16 Apr 2024 10:35:31 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6eb7d1a5d39so1425175a34.2;
        Tue, 16 Apr 2024 03:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713263727; x=1713868527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cY42OW8UeSirFeqsOJxYe5yMqVTg3yFG09RL5cMYF+A=;
        b=cXY1qNeGQFxzlPLbaXUwWNvdv0AR1E72Lr5NxJjQvm50bu56aNbsZ2ixl76V6Rcbuc
         mCN6ubhGU4nbiT4y5wDBKy+NSh9Bp2PeiHz9E+FoKMDcQyXm9C4N7UZ8lbxi5unp3hAS
         UKSprzQpMcnpMDKU0DhjdlnAtD0jfxkZ/Bjr5SMj82Pc5/eEQKdufAHlIUPECgIp6IZT
         AQUWfhxf3cKAhLgD0dg/ylrqZj4RCsaV8VoImKw97xBAXJG7suDJdeI7FIB1vmf/ztCc
         Kq+nH4dyz1xfM0bsQaIE/trNkfYYVZS+jQX13Vq1JqUFWEAcXkPCRzvq+OpZ4I0M5tQS
         O8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713263727; x=1713868527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cY42OW8UeSirFeqsOJxYe5yMqVTg3yFG09RL5cMYF+A=;
        b=gtVAxra0/LjUHnTEI2uiM0ZmKSKuF/7cqA5TXxR/SGBE/sgM65k3/dDrtNzfYa/Cke
         jNVevesup3oLJhiF3f9wcct7MwNDdmVQ2D5J903S0iU2oB1/qGxVQ3cT7V1hxjZUIKLI
         QKjfrLmw1iD/5IioH634hIDmN8I+kjgSLs0nocopAjEuYk4LAH1yXdHhCmcV3W26cLdy
         byI1AEbgTilqpCdRyMJbYlvBL7viminhSu8AQW9BwpCPGjx3cTtn1irBfWZILZfw6PO1
         y42qfXojl/5kJFmyo4P3os7+v7aznIYC/U2iiBsExZw60PC9TV9UZsGhy+Wj8Iag24bl
         4RYA==
X-Forwarded-Encrypted: i=1; AJvYcCX9zvVAoXJjx+7jHOwaDoRMkJeXmPgfm+ugAwpZ6edOg3IBrCUqwR1G3X2CZbnJ+UAryeErjKj9eJPvNJdV01RZGzAOjrHSK5/nY+tQVO5sFyj1LWGlFcParHeR1uDLt8aSvwhuu4n/1Ebguns7z8/ZP3rPpl461e4=
X-Gm-Message-State: AOJu0YwwmCThWN8YASh6AeNplCbZ3w/S+9jvVmeqW4OhWPzSUWz/qxOA
	NvO9XIJZHAVuQWxcHjk5huXiE4vIlL2go7iVmKo/msr2Kjdd8OXF
X-Google-Smtp-Source: AGHT+IEw9cmwM2hIAoklpoZ7SS+Np/6aL4HkLZt9UHslpEDKjbR9asrxOOJl5iBbyhftJP409IHk2A==
X-Received: by 2002:a05:6830:1147:b0:6eb:7260:cbd with SMTP id x7-20020a056830114700b006eb72600cbdmr7828300otq.4.1713263727617;
        Tue, 16 Apr 2024 03:35:27 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id o65-20020a634144000000b005dc36761ad1sm8677293pga.33.2024.04.16.03.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 03:35:27 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: cassel@kernel.org
Cc: bhelgaas@google.com,
	dlemoal@kernel.org,
	heiko@sntech.de,
	kw@linux.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	shawn.lin@rock-chips.com,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Fix GPIO initialization flag
Date: Tue, 16 Apr 2024 18:35:12 +0800
Message-Id: <20240416103512.330489-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240327152531.814392-1-cassel@kernel.org>
References: <20240327152531.814392-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_033530_279076_D3ED0176 
X-CRM114-Status: UNSURE (   6.76  )
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

Test on rock5b with RTL8822CE connected to M.2 E slot.
Before this patch RTL8822CE is not detected sometimes, and I tried to
fix it by a patch[1] but that could not solve it. And in that thread
Sebastian mentioned this fix. Now with this patch my pcie wifi can get
detected normally.

[1] https://lore.kernel.org/all/20240401081302.942742-1-liujianfeng1994@gmail.com/

Tested-by: Jianfeng Liu <liujianfeng1994@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
