Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43B04CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 12:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+z4AHAp1esJZ7WzUsY9FPqtFCB/CyKcT2v3PfmMMHfA=; b=WhE0OkH/g3VHNi
	wiT5lEEo5GjnBRtj0R2+E0GvvdnRZQbN0bl8vOIs2WvJLIcgILGSEKbZ9yZBFVxRvSmanf36mP19q
	+vubRThhQPqPImTe/TMlz8UUnzRLD+j7oUZgcBph92cp/hX+ooswcq03QvmXSFTDHegcGSl/Y39F/
	7g/LNBkZGQEozCVvj9vmld7yjHHvdpg+S0iqUL1mhWx1NdGgrO+babgz8PBHrAwq+upzo/bywNPfP
	rnjl6ONY23qPH73p5BQ1zsqotaJZAb5os7OPEESN4mq2eVV9DtyAmsQtb6aTB7gP7ZRIDvB+fJDVS
	+Ksohv7k6RNFfv7BAl5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux3EN-00000009MI3-00UI;
	Fri, 12 Sep 2025 12:50:23 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux3EK-00000009MGU-3XuV
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 12:50:21 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-61cd6089262so2825681a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 05:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757681419; x=1758286219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGeDXGIJl1AOftNs9qk+rBPk1E1YgE9B/9Oqy1+dUbQ=;
        b=CNm6kklyRcLB8dzYATLt0x2YHSgHCA57V8roZ3XYUCx25tW0Fhp1DLfnuCzn83x08h
         I4v6Uhp69k5ryuIyeO5PoHtZyI8x7TnkHJaiO9tUqMKRUbeCu5vVnlwS94a35Kus6HdJ
         lDzDtJy/nC8flESLqvQ/1kp6KwopV6frj7pLurQJsRZvIrzJth9/goiFgRsnIHwb00aJ
         cChEvRxNQkN3tRpERdo4y0T5sSIAHRK7qEKtzykZWJ7rtp2ZCHFa53uW/tc8yQYKX9Dw
         Ozp37/2bAg+1TvnlZTSir8EvMV1ntddBvlTjbxn7dZFbZadRwrozy5ByOqSw73mljil2
         8Liw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757681419; x=1758286219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GGeDXGIJl1AOftNs9qk+rBPk1E1YgE9B/9Oqy1+dUbQ=;
        b=rGKTHEsw+fhsFplGSTQZFWq5L0qIwhZxnAFPmZHw9m+3HKSr/btlKCLk4QRisZkEs/
         gwyMltiFrmSv3nfcipacAtvqRJjs4iyaZd+hCcuwQMCsP7Mt2qA7DosNo58QAQlfdegy
         GBF8Q48FLcfGqjmhczOFLOs2R76Ke59WTJTKMXcjgmguzcAOpNn+TjzO9pMVzk2r3Ety
         PmO1Ss8wCebalD5P6HWbqfuFuKElW0c8umFJFjM7WFzXloy1YV/cq10aQ9K/ul4MHl7z
         Ep5PAXolvr3W4C4xuVcOLh7E5TfwHZ9Ss33RkeCVAhru6uMKkb2TVDt6AQdbxPzpB5wJ
         5Ycg==
X-Forwarded-Encrypted: i=1; AJvYcCWpJagwb8dLEFfl8h8Rkk4bt1rxxhdNbiDIWlQAltAULMmfsBqzWHDn87RGf2ZqOY1mYBHTqRQSBT0Yly3yig==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGH2nyHHCodxul0B6kSW5X/AYLZBU8q381FahhWfY7DuJ/m+x9
	O+aniHOO4bISKzOZ6wlWEwYe5BUM0f/DehXocXHvFGBry/kXPxvmlz8L
X-Gm-Gg: ASbGnctn8Hgms8O4B+SrcXzvul9bukF/nWjFpnQbDdLU0jwSl73/liDkttz/ZqDytlg
	nU7cgMcTWf122IzxCLyscjDdR3WQBNVKvwJmRMFRZ7nQcFlkYVXnHKmp90gRODiHOIxssikNYNO
	G3tWOMfTNjdI7+EON2G//1XNT86lsOiNORdMicTZk0RrzqUNUAsqrR2J0XNVbaj4WSXBPsIrbb5
	DFFJQB6EJOh0zOwDQ6Kxv7eCFBPW8YC7C6viertR0Zps68hHyKbp9S0jsxDvO+VVeOOypmmXR7i
	A2m8HZZTTUZkB+p9TrYlBsbz6ThlRfjP4kdeHfzcK3FowGbio9IS5goF2kXWY0HlR5pZQ0Eo4q6
	tSr++M/nzCXqCqmXna5dt+xc1T0jEhVX25ng86yf5SDfbTwut1dPG8q/0+A==
X-Google-Smtp-Source: AGHT+IHF80AxGV50REF1qrKV8qN7l1064i99Pa3a89AdrsuZUgZAJugEI2eCwcp39sykCy77HRlw/w==
X-Received: by 2002:a17:906:f58f:b0:afe:cded:bf96 with SMTP id a640c23a62f3a-b07c347f8abmr240925366b.6.1757681418427;
        Fri, 12 Sep 2025 05:50:18 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd3efsm363446666b.55.2025.09.12.05.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:50:17 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: dsimic@manjaro.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [v2,PATCH 5/5] RK356x - Add OTP description.
Date: Fri, 12 Sep 2025 14:49:42 +0200
Message-ID: <20250912124945.2300498-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910215451.2244192-6-andreil499@gmail.com>
References: <20250910215451.2244192-6-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_055020_887361_2DB22DCB 
X-CRM114-Status: UNSURE (   5.42  )
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

Hi, Drang.
Ok, I will work on this patches a more and send a v3 soon.
About v1 - I immediatelly archive it - this messages don't have any
descriptions.

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
