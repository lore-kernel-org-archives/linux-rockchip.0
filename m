Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF3FE7717D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 15:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waV9Dte4rM7TIPGHNf0RbN8W82tlleetqX2Wul2mmFc=; b=zwb5RUN0rNgpQ4
	k4u/03x+sPFD5s0RmiuWh0Dk9CJwVSjQJaPEW9Ymy40YzmxrAfAXAjRuGULVcyWUv9SHn5JemIVUU
	QgXxJmuGt4CrEPOg6yZk207H96jaLh4ABhAkEIWILbSBfbfQE58VLn021mzZ55SJTUCCf6k0T491q
	XdArjbbipmqMdRhxeiO3mSt9Am1k3ayZd0ZnPJSlqjiKb3WivuFxZo/hXkwXMSTkEcjkhiYrC+KCt
	wsuJUp0VEqUtPOP+t/kzFoCW/wbeCQgmrWGrO9JlOvMZCfvpLu2xqLtGA3cLOXkJ1oQ4+rYCHp08x
	aQf7CVGNR+aBM7m2VZhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7nJ-00000004IhC-3jFt;
	Fri, 13 Dec 2024 15:41:33 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7nI-00000004Igc-0P3S
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 15:41:33 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-844ce6d0716so142640539f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2024 07:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734104491; x=1734709291; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4wKn96MiedFl6ia4ZZdGHhhDmKHeXzJLuTF6TNk3g4=;
        b=QPe70jjSnoxvULmlGjE2gX6gYqyIfeALBltJHQ0iPNsPfhvIu4vsxaLrabPVJ+GUaR
         QxwMZ05c5YR4XVJXeH3Jt4UYV4oRYLJ6KmPIxKedJVyk2I5yO4zURrOp9w2OaTXf1IDk
         NGFetVX06qpOiRP4NAOLUbQ8JIE2J+C+kNh6UE9T+CX6TUeGnbs9H51XGFxMMayhl8UR
         cBoqhuMBp/c0E5CaGByGgG8Rh3eiMX+q6qi4nZKBrkpfH4tktTz44TIECVLMy0mbbTVm
         6C7UhZGGUR/6RPq5eT60nBiY/5CcLc0H8hs2DJi+lVG6vetRGMPJeVOUrhTVsTNHmRsa
         t00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734104491; x=1734709291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4wKn96MiedFl6ia4ZZdGHhhDmKHeXzJLuTF6TNk3g4=;
        b=xJwYvIg35qim8K8Z0+lPaFGpzA3BUHvzLQMcf+fRIWrM4qHGjl6s+DPuBoKqmVV9Bd
         h8oksOkdGCnJ1gq2c5bEtvVQuiD3c3Zrr13vHWfwa3D0MxB2q5OGULAdu5eA12gaDL3A
         nEK7w+jNZuOH8+IVRudngG4xh4OOcPEIx54rk7dEFrRtzei4S2dDyWKbWFn/SB+qtgLm
         oxgEJKHRYqpnUbjCuypd68GIels7n80C6Mlu5mkpiET9NOhD79yti0s6tQwJ/lBlcnb8
         tDcbMHV0oRFrnMgiFM5tWRp/fqTHjVbKHo2fA29w6HILxZe0/vCtJ1BIqEaDRmTiRa8W
         tbAw==
X-Forwarded-Encrypted: i=1; AJvYcCUixpq7iWmCMJmVAO4moDTz8snJ9Jq1PxmF2/67HB75RZBO7pmWM9RVMSsO7wwhH2IDazQ/aHO8o3Kk2E2Lcg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6uw6hNcw+WwJ591cY9i4LRXcium28bVNX1Ea/F9B33+THqvhP
	fQNw46yY75ybJkQMdA9xFQ3ojU2Iq1KYZn/2gicSK/4Mi/BCUFx3
X-Gm-Gg: ASbGncsRAaoIHnt1FzaJ/DUGPdXTf/wshz/hBY/ZFga90YzwtboSHTo7JZB5ksW91v8
	hLxSKRKDKmk9Gj3PVjEBLM3u3rUxyKR+4LsffMrPAf8pb9jyLVi3ExfC5S6XBUv6ddi94OrBZxX
	PwuAu8HMZJ69g0/m+I70mb2BC2dDC44cBd5iq8vGTo3Zlg5cSfoLVq5Erp6sFJOKHoiVCykN5td
	7KC1A8IgUnMmhJ5fCV+HRpM4aP2xVndxZlUUj9yzKyudkNy6oENjpRT7fyi7fbpz/wUMCCfICnL
	1brLSQ2I4ye06dFDdJ4kueTftSk=
X-Google-Smtp-Source: AGHT+IG7zKmTTY+3cU4+IRgs+3snv2XaZhum1/jfja2GkIpicjF9Tf6CDhdfxxuVlVsfE7nj39hb0A==
X-Received: by 2002:a05:6602:2cd0:b0:844:debf:2c8f with SMTP id ca18e2360f4ac-844e88ea5c0mr342460839f.14.1734104490740;
        Fri, 13 Dec 2024 07:41:30 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-844cceb0c34sm148704339f.21.2024.12.13.07.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 07:41:29 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: krzk@kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	shimrrashai@gmail.com
Subject: Re: Re: Re: [PATCH v1 2/2] [Draft] dt-bindings: arm: rockchip: Add Firefly ITX-3588J board
Date: Fri, 13 Dec 2024 09:41:14 -0600
Message-ID: <20241213154114.5078-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <ca3f43f8-f96a-4d2b-9273-a4d936fab6a6@kernel.org>
References: <ca3f43f8-f96a-4d2b-9273-a4d936fab6a6@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_074132_137599_0A73EB86 
X-CRM114-Status: GOOD (  19.07  )
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

> I mean exactly what is written. Use the tools and the tools will do the
> job.

Since the remainder of your post is talking about CCs and the only other
tools listed are related to CCs does this mean that by "device tree list"
you were referring to a place to send messages, not a file in the source
code with a list of device trees in it? I was interpreting your statement
as referring to the latter, not the former. You also mentioned things being
wrong with the code, too, even though they did not show up on the scripts/
checkpatch.pl tool.

> This does not work like this. Use the tools, not other people's
> incorrect CC list.

> I gave you instruction which tools to use, so I do not understand why do
> you insist on not using them.

I am having trouble understanding is why. Are you talking about messaging
or a part of the source code itself when you say "device tree list"? As you
said that is necessary "for automated tools to work" and that makes me
think it's some part of the source code run by such a tool, but here you
are talking about "CC lists" i.e. messaging. So I do not understand what
that word is referring to - that is my confusion. I certainly can use those
CC tools but if there is also something that needs change in the code it
won't be changed unless I know exactly what that is and thus I need to know
if there are any outstanding code changes indicated before I make another
submission using the CC tools.

     Shimrra

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
