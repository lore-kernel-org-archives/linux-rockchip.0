Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1477CD98E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jun 2026 05:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fERfRiNzIhxDkrScKMBADKAbXvQmDtlf0J0AJWZVOtU=; b=j3msY246nqbbIP
	qV95sjNqipGz/EXnAkvlVt0Rw0E4xQ/1z/crB3b+4QSfBes9pZjXZjtBoHypvxiFLzF/+oxOrcca1
	JzpnxESgGkgRBJy71hMBK2XVz3crC2kqDwUiJY+cp6sqEtUMIVoahS5ModKFyS2wcQLECbjdO64pF
	cqFrVbawjK2aytDswX7GK8GDLnuXQJ+X5e+uko/ZR5+wDXHVFnyGXy3T5gJxGrMbyavYnf+7m80Am
	9eA7m10cAPBMYe40mlrZuHv3jo/DTXUOTlZR9elQayLXwCmzJVx51EMNNpe1WqrHRmqrOlCH0T/xy
	xFTDyKfuU6Q13bz0PmRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waoPQ-00000003B9m-32eA;
	Sat, 20 Jun 2026 05:38:24 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waoPN-00000003B92-3Fxv
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Jun 2026 05:38:23 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2c0c379e8ffso22909085ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Jun 2026 22:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781933900; x=1782538700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/7ep4EgngMi756SBUztuInzLdyJ5R5zqqGXrsQMtkM=;
        b=n8iANc3FbjNjGR9o4iTjb9naxp5+MPalo9eBzF6HDOSi9nCIBAfN8Ws3TxZnU7eeqn
         ShzQiZrIJCMGOU20y/p0YgW0RlkiS9xAsBV+3kxCAIFnk3c9Nb/hf+5a9KGVCpo7K44B
         ZudFbYXK/3gu+xCY3u/Dfe0RMd0CymI45VvPNuQmkvHIXDwKjFCmRQohehuGFT5Q5taQ
         BYNNnMUBj2ZeJNyHLA+zsZVW7BKULSQzMcC7QyEIogj9JnHpYNZN4mqTTQRSIDv35DHJ
         A1VqyG/4vEWFI4c/5Gs80wTyiC/QcjH/1LHEnopNki1vyqnL7vpxk/KvgOnq/KnNjzzm
         lT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781933900; x=1782538700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T/7ep4EgngMi756SBUztuInzLdyJ5R5zqqGXrsQMtkM=;
        b=Txozlq4q7mh1HYFJIAJbVhcFf87PWflYtQTJ5QThQSNoh5GD2vdtn0Qyb5QwcqNHAi
         XdAHtEeIq4HKzFgwnkq9j6wI5lCtpuAUcP4sKYROXS2pBucqSl4+BqsILt++NMcx6OBk
         lahYhq7ONu3+KhqTUCUjfFjk4jnULwfBxPA9fmvnEZ4FGN2Lmm1cUChouSXEh15UdNBE
         sshRhfn5KXNMjYtOCsibQfE/8/APZir3LiL+QU9eHZQp0jEVgbVz4kKZ+lwhGLXhchZA
         X4jXtYHzFARx3/xRQvQvWO4XCPsWL1rgWkGjwk+CuPkfbyWPZcAUBY7U4f1M9Y83Dg9P
         PdJw==
X-Forwarded-Encrypted: i=1; AFNElJ8P5Z8zymwpkL0YV/oIEIeRBqBEYGm7qxC7pEp/jq+Zwn0dmENXkMbLOgEhCMuAm0NDgwzRwnVIkSvoRVhmBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYGwlvtwPzDiDYjZABFgAy+bd3bkEP5HDG2ZDyrgklyu0yyE5X
	WBp2DA5hPtFvdJgxZE6BLznEZ07KgkBCfEBo0H3c6ikXt12AYAgqz2Pk
X-Gm-Gg: AfdE7cnUWF9yFf4SqQwhDTHXO5TnNx9osfEn7RVVHmamUkkDTaaFimZ6sxepusxU15F
	JPhassNwiC+hWVAI7yBFKXl2sPimlNVPeCxMI/HKcN6NPOgrn4EfpzkEFLeLFDcQInXhg2Q1d2I
	UbRZjBCv+knNEumR4WsEzJJ43TdlRXW9NBB+awOHiSYMQ1Pu3zoctkV+u1ZKmsTNVkmrRLMchEp
	2d+bZsoJrkQARuSQ3xFEniKnjceUjrWgGM+2WBXQIK+Cf65wHtW2lYk+41YNgi6m5/1d9JjAhax
	FEmKwONyFmdmNDr6VNk8f+PDtvJGuDdOAQdQIzqAISWiH71z+eRSglosuwIyQm4R9be9horQOYF
	86PlZ7Yh4oS0M15WtTPItxYpcIuVrfaLmoDhJvw7Bz+WARNphTqcdEWlshSkvBMyXmucYRX8N3M
	OCosNo6w2NlulZVtjnOdc=
X-Received: by 2002:a17:902:ce09:b0:2c1:ef9:4516 with SMTP id d9443c01a7336-2c71904ee57mr70697045ad.35.1781933900305;
        Fri, 19 Jun 2026 22:38:20 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7436f6395sm12161565ad.28.2026.06.19.22.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 22:38:19 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Sat, 20 Jun 2026 11:07:59 +0530
Message-ID: <20260620053759.9841-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260608060940.52549-1-hrushirajg23@gmail.com>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_223821_842722_2DD750B2 
X-CRM114-Status: UNSURE (   8.99  )
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

Hi Heiko,

Just a friendly ping on this series.

The binding patch has received an Acked-by from Krzysztof and the
requested review comments from previous revisions have been addressed.

Could you please take a look when you have a chance? Any additional
feedback on either the binding or DTS patch would be greatly appreciated.

Thanks for your time.

Best regards,
Hrushiraj

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
