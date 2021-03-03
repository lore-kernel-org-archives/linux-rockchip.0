Return-Path: <SRS0=/i9y=IC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05109C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 00:26:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C14464E68
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 00:26:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C14464E68
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:Cc:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GaXY84ztaW7ziqpJQN79PxAKYWD5aPu2DSc8PerRkk4=; b=q+iyXYCHG0b6BzQRHb/nScLOES
	uYEbWB8F5iG7HVSHaibFEG6PJWg0gXK7ZxZEW1oZK6RftyxUVzljIOaH0Y8yNSyBANXpeKjXocefX
	7Wlnf7oqE0lR21wADwNojtCsaxXBq37I1VAzc/tCfSMoABGq29p5trQLZbkP6KjgtNf7V1AUO2KKo
	YUDdCMLPRWDoUZL+daN+ZrWHoclmDvN88dIsxjmSinjecrdXCq7vgWm7DCwaXTMrLNDXt/QbX8vnY
	InLC52K1kz1C7HcQdNFfA3szKbSGEKLzCrPnI1p4aPTL4ozNS8c+GsmtcQjtdG7PJHhEdPQYHYkDs
	zkKPCXVw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHbp8-0079RV-Fn; Thu, 04 Mar 2021 00:26:38 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHWKR-0062M9-BB
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 18:34:43 +0000
Received: by mail-wm1-x32d.google.com with SMTP id e23so5973658wmh.3
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Mar 2021 10:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=y3/Bznt4Y9vXwTrFqP4cvESNuxmTrVBinfDIhL29WvM=;
 b=MGZlHEIbcXMkkKPaXcGs7E/68UIDKD3IS3H39abWhPGqdVNKUBZn7GMuP7eR42d4FF
 Y08ny43SK4/Qq9t1ap3bX9mmJRJnrmYvxySK9lilJrzMAUUy+Ijjf7MFNSyrmDKL0GEk
 FZ2SRBuR/RbXON6YcKuizDOGnjGXyqo42y22133kCEeLruDQts9Xum9Ea5YXIds/5RAx
 iipr4YegX4kkGkZC6jzkySFFZSTtjoUuEjdyvOwSSo2pQAsxAWRVIIfXWOTJjvxUJYEg
 vn1LXSFpMNNPiTrc7sZsAcHLRhffsthEV7TN8XUVDTp7sUKzJSSa3UCiJ/bjkNWiHJcz
 FDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=y3/Bznt4Y9vXwTrFqP4cvESNuxmTrVBinfDIhL29WvM=;
 b=bDGT61kWMSRyqfBVEpAynk8kS3OWArhpYk9B4msx6EDzEcrJSQ13XJfpw9NSgHUZE7
 +DO11GWfu63x6Kgsr8VXw64j6q/R/wlQfsVkgdrgMS+QkBGf+w9cMzNtGJafUYOFCwUx
 vS6MV0hf4uoJRHt15ycU3k58iDLvAzxcSIpatpzWHsth2utvFEV0XbJcYFt67Wpo9yyT
 C5Ex7P9E5xxngWMFVZQL4q2OGO5s0gP8iA/HBtoduEM/K/MHJscZN5GHsbiZautqYArk
 KdkfCJgyU+l79GS62lubQIVE82ozmS07yCfjMj3729riCozPygcphKPYlud1HuGY8B2K
 S8vA==
X-Gm-Message-State: AOAM533bc64a4Svmyng/C+xhH1bPc+UoKgt6vyYZJbGa6yonnXa4wD+A
 dW+P6vHx9KAg7MlVWHaX58c6LhVEFoRB+g==
X-Google-Smtp-Source: ABdhPJw8XJfkgAJQJodbqDuc3LpB5cCRjN4Pkh8ZZLncBqWrHgLsTFzqCs6aVn8pPN5pT6fZa7SIZQ==
X-Received: by 2002:a1c:9a48:: with SMTP id c69mr263202wme.157.1614796473367; 
 Wed, 03 Mar 2021 10:34:33 -0800 (PST)
Received: from [192.168.0.41] (lns-bzn-59-82-252-144-192.adsl.proxad.net.
 [82.252.144.192])
 by smtp.googlemail.com with ESMTPSA id r9sm6209997wmq.26.2021.03.03.10.34.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Mar 2021 10:34:32 -0800 (PST)
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko St??bner <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: DT definition for dmc support for rk3399
Message-ID: <9e7a112c-fad5-3494-bd41-b5a291259c2f@linaro.org>
Date: Wed, 3 Mar 2021 19:34:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpIGFsbCwKCmluIDIwMTkgYSBzZXJpZXMgd2FzIHNlbnQgcHJvdmlkaW5nIHRoZSBzdXBwb3J0
IG9mIERNQyBvbiByazMzOTkgWzFdLgpUaGlzIHNlcmllcyBoYWQgNSBwYXRjaGVzLiBUaGUgcGF0
Y2hlcyBjb3JyZXNwb25kaW5nIHRvIHRoZSBkZXZmcmVxCmNoYW5nZXMgMSwzIHdlcmUgbWVyZ2Vk
IFsyXSBidXQgb3RoZXIgRFQgcmVsYXRlZCBwYXRjaGVzIHdlcmVuJ3QuCgpXZXJlIHRoZXkgaWdu
b3JlZCBvbiBwdXJwb3NlID8KCk90aGVyIHF1ZXN0aW9uOgoKSSBoYXZlIGEgcmszMzk5LXJvY2s5
NjAgYm9hcmQgYnV0IHRoZSBhZm9yZW1lbnRpb25lZCBwYXRjaGVzIGFyZSBhZGRpbmcKRE1DIHN1
cHBvcnQgdG8gb24gJ2dydScgb25seS4gSXMgaXQgcG9zc2libGUgdG8gYWRkIHRoZSBzdXBwb3J0
IG9uCnJvY2s5NjAgYWxzbz8KClRoYW5rcyBpbiBhZHZhbmNlCgogIC0tIERhbmllbAoKWzFdCmh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8y
MDE5MDUwMjE3NTgyMC4yNTM4Mi0yLWdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20vCgpbMl0gQ29t
bWl0IGlkczogYWRmZTNiNzY2MDhmZmU1LCA5MTczYzVjZWIwMzVhYWIyCgotLSAKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
