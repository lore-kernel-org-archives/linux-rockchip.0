Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0691AE7717F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 15:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTrUqHLqhP/aYV0tQpL0TvqSuG775uShamYDtbmq4/k=; b=MfS0Ed9hA9c3F0
	PcQI5TsH1WdbE8s8u8DSb1XMp0KVUZruXcukenWxgoYrVI0n8lpWba1Butp44ekGHKX5SAd0gyNav
	JtcRqePTqsfec9mOsYLcUcJ2480E9hRcLSs1VLmfWealcAHPbvs36zpC9jaXAPc3RoxduZ0cqSAHG
	+Q55cUl5kQMa1RR1gTrtJpTMbpRkjecKAZENGx1s6pMCBBn+G/y1JLNIiIGrzVWCBZbMqWe6MMjz+
	NjHivUHb3lWb31pQMle1hg+j2J2W+6NkMJPqGkQBWfaR42AkOkmoQ8L0Iow2vG3DBNcY/0uZwkMQe
	zlBvj4eaIkDdvo6bHdrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Gp-00000004DZk-24Wj;
	Fri, 13 Dec 2024 15:07:59 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Bm-00000004CPi-3e6p
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 15:02:48 +0000
Received: by mail-io1-xd2d.google.com with SMTP id ca18e2360f4ac-844df397754so59658039f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2024 07:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734102165; x=1734706965; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4XVYtKwTonTRAAEz/VpBAxqfQVzXNgnMIhjLVHKGIec=;
        b=gacG3vjCLRQJMJKCBVBAvMqoYHrf1fyPJwmj5IYnDmmweQfImvDaz7tvQDATxw3DQi
         /EjsAObPeI9En48PsZMDctFbsJDo+HmRVFXATpAJORs2X189O/8hgWXGPngrV6eU6h1g
         GkC3gxeLjHzNy/vvaO6ZFT8CLOuK9k6kvnUFECXiy8//KK6D2/K5eARNLbFDq0DKFx1o
         QJqt7G9rMNVnSey/MbuBnh8zULAlRLu/KG2K8YkJ4oPLuf3/4Bb0sbjiqBhIYVTh9F++
         N0OD2IBlCvWxtS/Wwu1q7mZJ1GgPsAiK1pPbF/3a1hG9a37DfhhoTCTZU614I0U3NzLe
         WJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102165; x=1734706965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4XVYtKwTonTRAAEz/VpBAxqfQVzXNgnMIhjLVHKGIec=;
        b=M0Zy838uqRLvvussokk+tcQPrl1I0ycslKd9aYNFKNdw3iKfxP/QmPImnxqo5F1rzy
         4AVbc63tR5zHlCZKMN4DcuUREwFgKNd8wn9fkM6nVyBb3rVHzbgLItZR3vpLtjgft38r
         7hfeb8XRE00jPQ+WH/CFlE3dEm+AKT6TwWUSop3QNGFNArMGhg9PGyHxZ55zIqLqqD4F
         tT3iYFf+JOzwiYvqD0GwJxXRW3Otqph4j2OcdhjHGYU1CMw1fcDyEkH3vzUSPpivlD9x
         w1JYmoIP7utZq9hS49Cvc1Z7OGyI5Gy6EZyIw2wLOk1+k/Dj7zM/hRvR7erLgUn0OZnV
         SOHA==
X-Forwarded-Encrypted: i=1; AJvYcCXPclSVDMlf4d9v405faC5WvSOqyvHDV9Q6wJRNqoX5T5HxkkPU4MDs6FN+i0H/dW37QKh4DfMruUoxQvJRSA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9lS7kSEEpUuDT7Tf8NbNVGGyF1Gz+0BePIhnwrERn8qHfEVY6
	6bsEC9NOmJwd+QL5jQWWN8LASD4bwbLPjuUQ4WRKXubhAq4tVPeo
X-Gm-Gg: ASbGncte0+ONhQkk/53GUuJ0dVrv5AjA8/J8mIHxbp6xZizKXKuKkgpqGBxH1Zt72zQ
	TGnr+UPp6xBhqdpyJSKtTYC8SLR4MHJJ/V7tcG3ASMC0beSCnsGuUcHybqmCvoWGyWmaTGwzoPs
	7wanK2OXy3mwF3pW5aeBAyq+MWMpnMiykDpfDuTqe8aCBwzn14cvRS7E4nhwFa+FY4UFfv3XO5+
	cwndn1nXR/bvIszh+rlW1JMnamt5PvQdWWfSD/fMyXARYLlogx5fTMrkN/tn4ykoryhw149IP/w
	R57AnAFaxiElU3DMwlmKOIRTMqk=
X-Google-Smtp-Source: AGHT+IH8IbuI7F6ky2rFAaRDM1zteBgZSha56oCzRrTXKDMqenUD4Nu189RS6ql+CVybbNzCPg37RA==
X-Received: by 2002:a92:c26a:0:b0:3a7:635e:d365 with SMTP id e9e14a558f8ab-3aff69dc06amr34304945ab.6.1734102165197;
        Fri, 13 Dec 2024 07:02:45 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3ab2189b6c4sm12220525ab.26.2024.12.13.07.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 07:02:43 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: krzk@kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	shimrrashai@gmail.com
Subject: Re: Re: [PATCH v1 2/2] [Draft] dt-bindings: arm: rockchip: Add Firefly ITX-3588J board
Date: Fri, 13 Dec 2024 09:02:25 -0600
Message-ID: <20241213150225.3538-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <c1b662d8-6470-49f2-a904-139a33061885@kernel.org>
References: <c1b662d8-6470-49f2-a904-139a33061885@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_070246_908062_AAFA0827 
X-CRM114-Status: GOOD (  21.88  )
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

On 2024-12-13, Krzysztof Kozlowski wrote:

> Explain why this is draft, what does it even mean. Do you expect any
> review or not?

Correct. As I pointed out, not 100% of things work.

> Please run scripts/checkpatch.pl and fix reported warnings. Then please
> run `scripts/checkpatch.pl --strict` and (probably) fix more warnings.
> Some warnings can be ignored, especially from --strict run, but the code
> here looks like it needs a fix. Feel free to get in touch if the warning
> is not clear.

I did this, but I do not see any warnings beyond

"Prefer a maximum 75 chars per line (possible unwrapped commit
description?)"

for the 0th patch, which does not seem to be from the description and

"Missing commit description - Add an appropriate one"

for the others, and

"added, moved or deleted file(s), does MAINTAINERS need updating?"

on the 1st.

There don't seem to be any substantial errors indicated with the code
itself. What issues did you find, as you said it "looks like it needs a
fix"? Nonetheless I wasn't planning on this one being a final submit
anyway, since as I said it was a draft because there were things not
working yet. But if there are other problems with it, I need to know what
they are esp. given as I said those tools have not indicated more problems
than those and they seem to do more with not adding further info to the
emails than the code itself, yet you say the actual code needs a fix.

> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.

Thanks for all this part. When you say this though:

> You missed at least devicetree list (maybe more), so this won't be
> tested by automated tooling. Performing review on untested code might be
> a waste of time.

what do you mean by "device tree list"? I was not aware of this part of
the kernel source code. I modeled this submission off of others I've seen
here and I have only seen them submit the .dts, Makefile entry, and .yaml
entry in rockchip.yaml. I have not seen a "device tree list" different from
those. E.g. for this submission for the Orange Pi 5,

https://lore.kernel.org/linux-rockchip/20241111045408.1922-1-honyuenkwun@gmail.com/

those are the only items touched that I can see unless I missed something
really subtle.

   Shimrra Shai

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
