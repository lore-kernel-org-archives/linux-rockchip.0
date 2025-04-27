Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE7E7C369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0qBRbsIeGEekjSNBLG5OmOQFgYdafk7KZRkLSluhW8=; b=A3VkWZC5CVhqZ6
	eqdys+YbW7vghMkkido2y+5qbTUbcB2ZhoUxHz8w1UsmREEMlD0FA+n1zeKPQT+CjMCl2PS0Fn1Tp
	xj6/snK/h5xCaYNdPE5BruiAh3CxD3TG5bXOyB6jeoe72p8G7noF+exAjkZ+MasLZCspKl2bO9QUN
	DKdtMI/NXOBXT3TlNHLb+aJdnZXpo+8Wneqly4ENMUxeFWdTjGKGTxScloNT6oAZcWOQ5Ogl4pOeo
	oxOEpN24s62rSNUN9Itid2MONfIh8OJltb7cyQfBpQTVtdG1erasKXVInXeWkFxh0y96HHmhiTndM
	vr9fTda9eXrQZGuYDnaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u908u-00000003PL1-2DTg;
	Sun, 27 Apr 2025 11:25:52 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u908s-00000003PKU-3Oig
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Apr 2025 11:25:52 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-736b350a22cso3346628b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Apr 2025 04:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745753150; x=1746357950; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQYV3EIyVPg42bC23m1Mnam5opgSlxj9bzYC+y7WKkI=;
        b=Weeli56KADeIQHWuoPfRV/gTTuegxR61ROVsta2a8paJjwFdI+u98GFXOIdgR8/8j0
         dplCzyTRIzafPmYrTE6IXqWGZLRipJ+iBB/hSAOieYbVfajAeXRHCSgjdB4GhGL0Yb6f
         W3dBFPl8jvxUYb767ApLtwtTj/3w17B7xEZC/Gl88NVAOlUDBgmWeGvNyWzTudXlx2mc
         XoEk+4NNXbhpYEthsa0XK+mhb2YMOr6sjV/gO2T9KtkGLkieNHSzk7AFQMrhiLa+dDAP
         mMmEzh/emdb157viqIiUgOYVOWlF7nI8UmX3pKHcmhkwqI1C/6kgbqrjintVLYnn6fHI
         dwLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745753150; x=1746357950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQYV3EIyVPg42bC23m1Mnam5opgSlxj9bzYC+y7WKkI=;
        b=QKIsAkZflvEj1CcCyXzgwj6IrrSns8DYcaTJXicOzPSzRyf1elybGObkrI8MugScZP
         OJTzk5W/x/VeHGzbRXLGxt/DXj992ZrkeiD8xDR8AnRljMmXyG0pAvcJEmF205b4P73O
         cGCUIwh0809PCLL88cQoRDsc9VvvBQDmwlh/VSeiwLnNDYe4rzPuwcvchZuHtGXbGoJS
         W9AwzEKdMtxtK/Pg8XUqzGln2/tv2hWvOa8VCAnGE0YoPOoYxh+gH6qaHxnSZRuXYzCL
         1HZeeS+i4JQ0F+mGlPlSZlk+Oi/uwvaD5t4/t49s+4tNt4vzvnWPZwFM2pAbcHxrYuCz
         Jzzw==
X-Forwarded-Encrypted: i=1; AJvYcCWNPKa0/uTN+33iexEyAFRe1LmunTrJPmvVl7E4ngxd5B9aqwW+BtQhWaqdBKPIS4VETId2LymIy+l/e5lOEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkcgzVKpA9T2gGVsl1D7quJfGWXaWl2BGV2vrHxFt0TW7Sp4Dq
	0qO8VACFKAjbaLwbn/5z45ig14uax+rZWaKbjPF/I6nCjfQEb2w4qTB1PVV6bg==
X-Gm-Gg: ASbGncvBUUb3uLNNa9gO+ZDS59YHdbO2LN/31acFK5CLIonGoIyvzJ/+hoINdMGojmq
	qqkTvgb7QRV9uH3//7WOzkRC8cWRpmIRAAfQNe5SWNyIgol3XfnJllY5k8DzV7VD303fEVZpjzz
	i9PfEy2N5PZ4yNCDAB8WJZZFV8N554G4n8cSPOBHs8ZdGzo1rnRhxj1MH9S8BUhh76ceNprwtOM
	5GS9k4ZzH8kOwNv3qImPOoxUCK0rQc+MwGJozTiVWrNgarFFaCXcTAIVDff/AjKn3og3IuErXJp
	BijgEBMa06PhhI9As3ZK3FKwudSAWmz0k4g6GaXvYmAMWdsue8XlnTw=
X-Google-Smtp-Source: AGHT+IEYa9OXl0m7WgdPrkpgTKQAuQKMq0hHKYg0gsShE27/zhcRjCle6lSAEHyMrupw4FZzLgFpLg==
X-Received: by 2002:a05:6a20:9c8c:b0:1f3:3690:bf32 with SMTP id adf61e73a8af0-2045b6fa2demr12192685637.18.1745753149900;
        Sun, 27 Apr 2025 04:25:49 -0700 (PDT)
Received: from thinkpad.. ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25a99454sm6050067b3a.124.2025.04.27.04.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 04:25:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from rockchip_pcie_link_up()
Date: Sun, 27 Apr 2025 16:55:39 +0530
Message-ID: <174575041409.8328.13550522343316426453.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_042550_862912_D69F35D9 
X-CRM114-Status: UNSURE (   6.79  )
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


On Thu, 17 Apr 2025 08:35:09 +0800, Shawn Lin wrote:
> Two mistakes here:
> 1. 0x11 is L0 not L0S, so the naming is wrong from the very beginning.
> 2. It's totally broken if enabling ASPM as rockchip_pcie_link_up() treat
> other states, for instance, L0S or L1 as link down which is obviously
> wrong.
> 
> Remove the check.
> 
> [...]

Applied, thanks!

[1/3] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from rockchip_pcie_link_up()
      commit: 7d9b5d6115532cf90a789ed6afd3f4c70ebbd827
[2/3] PCI: dw-rockchip: Enable L0S capability
      commit: 198e69cc4150aba1e7af740a2111ace6a267779e
[3/3] PCI: dw-rockchip: Move rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
      (no commit info)

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
