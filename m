Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A73C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 13:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEs1FFPLV3tZn6qCqoP3oBNFn/MsOBNaGIMRjwdGUHU=; b=NRb7Yl+WvJpWGJ
	WmSd5bntXZra8aqoWDTXDbJO0MTmBRjdl7qbInZA2OvPmAHlpDFL8Vtzi+DHumN35ZefPA5G+fGRi
	TUgjuwMLx3Hu0LHsVNKVkLAPuuboX3o+MjmPS+dIqZWwCHRd6rZY7mG0Hh6DYVPqm69F4fVM1RKNR
	SXTplpxHHDW9aRGGA3NQvk7wBelcTGu4ejSzi8XCxRHa1upPJUsrNvz0SjCt6+EexpmdOpWBpHJFe
	Cgr467EIkh4dQAdu0GhhKN4fv2G61J2ejmeGQa/IHgXYorSoPmxlCZhVwZc86u/xILmkpEZUz/C70
	n6lSw2pAlyb7H526zrjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tppEb-00000008GIW-42C4;
	Wed, 05 Mar 2025 13:56:29 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tppEa-00000008GHZ-11ae;
	Wed, 05 Mar 2025 13:56:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ab771575040so156048866b.1;
        Wed, 05 Mar 2025 05:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741182986; x=1741787786; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tKVO1/yFtKo8AxMa+9eBPIXNrWvUam3daAFVJ/GPxo=;
        b=evZYnlILrmVb4volYPj9OTKOnzOAb5RiM0YnnpMTbfeLd/7zMwQa62OVSRHp7Hw2IA
         rUl86R/91tPKCDow/Tt7b0MPmvzpQ3toBKmM/XMsTBJwjUmq/AYQuqIm3/4Dn2Zx+9uS
         b0+ANExJBl/+32DLwpypH0PqxsBRrgkiwc0yB4DSoPXHEFDc9LAnVbTz/HspPG4niAFy
         LG4vdO2TpPC/Ve/AMaLPQ97R1DXSUB+l6o5ZrmKQ1JpKMMFhQ/js0IPlhoigaWCNbTlV
         mhoFzs3leBLBREtiCgRD8V+3vW5s8wep3pYdWAm5MBVc7kl5E1O4c71BkzoU02KW2Lwd
         G06w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741182986; x=1741787786;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7tKVO1/yFtKo8AxMa+9eBPIXNrWvUam3daAFVJ/GPxo=;
        b=lzCb/ICCpSoIsP1t6U5n5R94AA/TkXsBVoX//+UdyOuj9SQdAv6yl+8C7DufHjb9BF
         yVMAF6DBXH3XLHA6j2luxwQkTh01GFqMKXeReNCegOsBgBZlobRl31NLZ2xpCUo6hP6X
         naU1bXwURoZHe5YfG5cDZ04mbaVCdL78O5FXJBzB8eXTSUa9cO7JgbCEnENkk8LDOHAF
         C4YyEVY1I/d1qSiZcWLkN2EmPNY7ef6O3m7uhCmoba6EKVT93wCLBf1mvEVoklBLJmVF
         dA9X3lZrnS1WaOMrb92iNoqPp2TXp71RSAnMw+kNii0sZNH2fuXYnI/SAlSP7yYmbGZE
         Avuw==
X-Forwarded-Encrypted: i=1; AJvYcCUeOOVJALZIPXPxLLDC2TdNDzxokhybSLDByOgBnAqnHnyMzTn0b1r70HLmS2+gvu5yBFI2CYLXRIu0Cqh3J+BW@lists.infradead.org, AJvYcCV09G6eIwL/X2hjGS0tFOZJT9Oc+6UD0jRhCkjHEBXBgq9zLaVcPYuUeV4cdVMr4mJGdGjmpj8sGBlrFLKpZh4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuQX0IV1FjfdarlnZ6BF7GewSp7yu7TRiFznnSa4WBprG5ASiu
	Ij0X32b2W5xsN5tXHbjgv/9bYdn2auMqAr3/4mnTkNTYtR8UpHzT
X-Gm-Gg: ASbGnctlMnoeaf17gMyr6a+43fLmf0sTe+uQXpFnLSreSmYEwhMHviNDeeVZMu3S+9S
	tJWdru9dGjZ/INuaySh3+OvstMbOb8DUMAJR9JkVdmTgBERcyH4AnTXXi8jgNFkCij001Z8A3OW
	ZYlmZQ5PxOUlF/JBpse5wY57jiDmkrtYlUlBOUC7h4L7u9cQlh3A7XMcaErvHmvzGqfxNhPRrhB
	XkWo3971OcTHeV4SDrBBbaPpR8uL5ltrRdoRN+fw8N0T1syHjuOHgtNVVQr4a8p2gbQlW0Ptxe9
	goFvWWJDgbJpAi5383goNjR3l5vNCbTQNpbzlIO8GNsNigtU9USFUBqqfBvHp1KlQMmml2dASWi
	utrruYnz5NKse2li/3FZAuhFwmQ==
X-Google-Smtp-Source: AGHT+IFPKwZUivV9o2egwM9HtqA1X+Wqp5ZNIRNxx/29F/9iRwcSuupsGjgksk9DPk6Csl6LQmklyQ==
X-Received: by 2002:a17:907:7216:b0:abf:6951:4bc2 with SMTP id a640c23a62f3a-ac1f0edc6b9mr612346766b.7.1741182985565;
        Wed, 05 Mar 2025 05:56:25 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf7663b935sm550196266b.150.2025.03.05.05.56.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Mar 2025 05:56:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
Date: Wed, 5 Mar 2025 14:56:12 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_055628_282135_132C502E 
X-CRM114-Status: UNSURE (   7.64  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgNSBtYXIgMjAyNSwgbyBnb2R6LiAwMzozMDoKPiAKPj4gCj4gCj4gSSBvbmx5IHNl
ZSB0aGUgSERNSSBjb25uZWN0b3IgZnJvbSB5b3VyIGRyaS9zdGF0ZSA7IHNvIGl0IGFwcGVhcnMg
dGhlIERQIGRyaXZlciBoYXNuJ3QgYmVlbiBzdWNjZXNzZnVsbHkKPiBpbml0aWFsaXplZO+8iEkg
dGhpbmsga2VybmVsIGRtZXNnIGNhbiB0ZWxsIHRoYXTvvIkuIAo+IEhhdmUgeW91IGVuYWJsZWQg
Q09ORklHX1JPQ0tDSElQX0RXX0RQID8gVGhpcyBpcyBuZWVkZWQuCj4gCgoKQW5keSwKCkRvIHlv
dSBtZWFuIENPTkZJR19ST0NLQ0hJUF9EV19EUCBvciBDT05GSUdfRFJNX0RXX0RQID8KCklmIENP
TkZJR19EUk1fRFdfRFAgLSB0aGVuIHllcyAtIGkgaGF2ZSBpdDogaHR0cHM6Ly9naXRodWIuY29t
L3dhcnBtZS9taW5pbXl0aDIvYmxvYi8yZTI2Nzg0MmIxMDMzYmJjNGMyYzVkODBjMTc1NmExNDJl
MzQ3Y2M1L3NjcmlwdC9rZXJuZWwvbGludXgtNi4xNC9maWxlcy9saW51eC02LjE0LWFybTY0LWFy
bXY4LmNvbmZpZyNMNTAyNAoKS2VybmVsIGRtZXNnOiBodHRwczovL3Rlcm1iaW4uY29tL3VpdXAK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
