Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C468C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 17:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxA7ADW7yzD3GFzxv7ve7UQAj3UqS/0tobvu+nNIdyc=; b=dPxkyZtA96beMS
	EaMSPDVBLvzRXCJlGpbjjng4fQvep+eYTK6y2hhnLCwO8SLgcxQJOOzYXx6Gm47oHx6ko7MqnVq/3
	OVDBs3F6nTeWecuniE2Ieazu5TYFn3WJr8hnoOCOhM57o2NZY6b3AjDhgRaXhF6UFWnlCkNFBT9Zw
	oHZxQ6UQQhOOrPSNKWlB+0HlelRxKiDEz9uF2+GDv5jOqv7HxVApY6ykFE0IjfY52kKllRark1oGa
	S8xpSh6C35g+AfdcSEppsnzK9Jx+ixE7FombPKdsN9cJQvoh4KhCm0H0qDGMJRjAan4ePAgn8jhWI
	XB7uUwaY5jlza96Uvg+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJd62-003AcZ-06;
	Sat, 30 Dec 2023 17:26:02 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJd5y-003AaZ-1M;
	Sat, 30 Dec 2023 17:25:59 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6d9cdd0a5e6so1692899b3a.3;
        Sat, 30 Dec 2023 09:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703957157; x=1704561957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O0sr3LHpPxDEQss9RJqBt4liZtpPf5q1yFdjwSQfGEo=;
        b=Nh1bBbWpf+xW/aYInPAK53e3eqzapluZ3z77pIXrjNpJw/pncrPXFSHgFAl50ReoNZ
         6OTQVdGid1qdDbNh2GMSn0qbocI69iANLYs93R9yWxPyhyY7yLP0BG/QduKETOh9VZT5
         473I+YU5HD4kncQ5ZdoOrBTM0Gu+zm35hHKeLpjQbiNULXDlmbrWp51AHQfAJXX/3K/z
         le0eQimiFFLNp4vmVKgiYLnwVrAfvO5lc5vjA8S73j3nBv/W9/hptluxKQMDvkJvL428
         Wi3IYlBMqi/RTNcCBqrJ0eb5JAf7JPofUhfcs7qbZRM15bljeNJHlSWIspmhIs8rDU15
         8Mow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703957157; x=1704561957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O0sr3LHpPxDEQss9RJqBt4liZtpPf5q1yFdjwSQfGEo=;
        b=MdgR18f1Q28ool7gn1qivdz02FPEiq0/W2p04zTXgA2EMnK2GE/PwsJtxKWiC92eJ9
         EX6RHy5wu0lNeAKkvYc/hfyT0TLo9grYkpdTtZwiQ5J5Fim/klnHtuQ71QvCFcxoJ/x7
         IIuQ6V0jKbfe7blHJrEXqrvXmG4n6y7+d7STDxGdx5LoeEGDMNBeWh0KGY5ZF0PqxS7I
         ZR9gFIc3xYVTJiCzGQUwIdPKwp3HNfgKIHWEMwGfgEjOCqgLhpMDodMU57EngH5cCoZD
         v07J+r6UkAcKz0wTL0pxSejHDKlRC/ZlI/ZVlY6qvHwCj/nGtdAVnOEz+PqsTS8NA47H
         xHqQ==
X-Gm-Message-State: AOJu0Yw4q2e1N6VR9yGrwwZEU77IxpsA2TkRugk9hot2vb8u6FIYOtwC
	d+6e9FZUqjn9tCIjJfztGOw=
X-Google-Smtp-Source: AGHT+IGjGvbFtEv++bUDLPaSgFlYvimRMwZlfUhk5WKDsnqccExr4RJ+Q81PzbKa1CDbXqPliLSLTA==
X-Received: by 2002:aa7:9839:0:b0:6d9:978e:7625 with SMTP id q25-20020aa79839000000b006d9978e7625mr5679704pfl.32.1703957157229;
        Sat, 30 Dec 2023 09:25:57 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:9802:680d:e03a:17cd])
        by smtp.gmail.com with ESMTPSA id x23-20020a056a00189700b006d9a6953f08sm12896679pfh.103.2023.12.30.09.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 09:25:56 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: knaerzche@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Sun, 31 Dec 2023 01:23:52 +0800
Message-Id: <20231230172352.3913020-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
References: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_092558_456600_C9DE0313 
X-CRM114-Status: UNSURE (   9.04  )
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

Hi Alex,

On Sat, 30 Dec 2023 10:46:42 +0100, Alex Bee <knaerzche@gmail.com> wrote:
>if the RK3568 and RK3588 variants match, patch [1/3] is not necessary. Just
>document a additional compatible in a similar way it's being done for
>rk3188/rk3066 or rk3228/rk3399.
>If there are ever differences we don't know about yet, a additional variant
>can still be added in the driver.
You are right, this way works. I should have encounted a ccache issue which
made me running a devicetree I didn't want.

I will drop patch[1/3] and only add devicetree node and dt-binding in v3.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
