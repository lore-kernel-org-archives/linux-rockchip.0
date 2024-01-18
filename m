Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2441CC47DAF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 13:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMju78lPZOCX1e7U9Hn6+BgXkR4+ZKCSQSqi1EP2C0I=; b=N0mU+CiJn+qDCF
	qUqTLJPNvHcow3KWeALA4pDPjOV+pkGOUBHceOR8W83J/TmTcVa4BHSuCc1F9cLJwDYyNTVwHkYfs
	VYqsWWev48ZcdsZez2nUkIwm0bwwmkU9kiZyB+2pPu8y+g0tiZOCJnMIw84tIUAa4CQ3nCpcPUUfb
	3wKTd5gws2eCsUQt+eSA4sP+PLPZ3bBqSXjpWHKmML4344WBG5jFmsVFdUbKnhyBzevfX1PVMdtLV
	ItKiZrVvTDBENzwaIWsRNb85+Afuv3SHohI9RxP0YS6NmZV1KtUNMh10DORm7DxEQkM2VXyHcfAdl
	yxM8fTz6irvTd7Zc00JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSqF-002tLS-1A;
	Thu, 18 Jan 2024 13:53:59 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQSqC-002tKj-0h;
	Thu, 18 Jan 2024 13:53:57 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a2cea0563cbso957941166b.3;
        Thu, 18 Jan 2024 05:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705586029; x=1706190829; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G9MIswHWLD+GgE2qONMoQxUs8h+Lw0Idmat3zpcBgpc=;
        b=hdJG9d43GJgyE+706cBnjpp0ueg/y5ZoW7Wn69wLjWtPeUL6HSv0silux2IBCzXEMc
         yFArtFFdDIxo873k1HHXHyvgS0vC+Icwo7AadgsJM39PIqXtCII9tbn9sZDCwPiLYTx0
         CIawMBIzHpvSwiMfGdYibqoK7JJxZwglLxrTUvs2/PklmtuyhC3STb8FE9qg2CAs0iHY
         P/TM+QVVdKqRaRTaPUjPs/eIBtFd2sQP0M3R+BLw7dc2i6rpZDjs7VD0mFZPVsQiNn1C
         VRR4x8BP7E2dpXD4ADkpbfY+Ey/m0YTTUcSsrIio0XXgdBHHqq7jNkN05i4XHr5GVK5F
         uaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705586029; x=1706190829;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G9MIswHWLD+GgE2qONMoQxUs8h+Lw0Idmat3zpcBgpc=;
        b=RrSzl3LYIC1DVbg94Gs5q0uT2YVPOHMO+1v/LK4yxIPezk8QZ/QeaCS4n2k3Z4pmko
         ESnZNd0uoDSp1FR++QoPish6N/i6P+0+VMZY0W17rxViD4j0C4MLdnqrb+twEtS1Zh59
         Z/92M0QLQKrIu5U7LtqylPRWzYRr1aYvPCj12EZ38V0KLBOS0ebD15khgkGJ1CPGjIM8
         rd2sO78oEuez6/Gne8vzdTR5LAvEMYl0tpvth+CNgugHSBYXDwL8SMwTr87min4EI0mI
         TPy1SRXT1TKsO4eiXgFzL1y+v4m/Gr9oYfrR1rUaUaIowwtQmP+IbcTiAAm/ntENLKl7
         T4yw==
X-Gm-Message-State: AOJu0Yz9KVCBb1TioP2UGC1YZ8Nb/drshxss9Sq8kmVakpUO7uAhpq3A
	Z6zbVGW4sW38/kAYtXoSLg/c+QQqpZIYAB/Kye6stYienoSZu/Qm
X-Google-Smtp-Source: AGHT+IG2xmWsdIRyNzSjpjlSc8OqjB+07Y553XsPhCpFvi46hCvtzIWdtadtbNxngmjCGlOEe3H8MA==
X-Received: by 2002:a17:907:8744:b0:a2f:24ca:3b93 with SMTP id qo4-20020a170907874400b00a2f24ca3b93mr745883ejc.117.1705586028995;
        Thu, 18 Jan 2024 05:53:48 -0800 (PST)
Received: from smtpclient.apple (84-10-101-169.static.chello.pl. [84.10.101.169])
        by smtp.gmail.com with ESMTPSA id q24-20020a170906541800b00a26f0f49dd2sm9276238ejo.11.2024.01.18.05.53.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jan 2024 05:53:48 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for RK3588
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20240118113051.10773-1-liujianfeng1994@gmail.com>
Date: Thu, 18 Jan 2024 14:53:47 +0100
Cc: nicolas@ndufresne.ca,
 conor+dt@kernel.org,
 devicetree@vger.kernel.org,
 elezegarcia@gmail.com,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 knaerzche@gmail.com,
 krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 mchehab@kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 sfr@canb.auug.org.au,
 amazingfate <liujianfeng1994@gmail.com>
Message-Id: <2CFF2A39-6416-4599-AD32-E99EF95F5A36@gmail.com>
References: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
 <20240118113051.10773-1-liujianfeng1994@gmail.com>
To: liujianfeng1994@gmail.com
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_055356_254342_24DAA33E 
X-CRM114-Status: UNSURE (   7.22  )
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

Cj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogYW1hemluZ2ZhdGUgPGxpdWppYW5mZW5nMTk5
NEBnbWFpbC5jb20+IHcgZG5pdSAxOC4wMS4yMDI0LCBvIGdvZHouIDEyOjMwOgo+IAo+IEJlZm9y
ZSBya3ZkZWMyIGxhdW5jaGluZyBtYWlubGluZQoKT29vb28gLSBpcyB0aGVyZSBjb25jcmV0ZSBw
bGFuIGZvciB0aGlzPwoKQXNraW5nIGFzIGltaG8gcmszNXh4IGNhbiBiZSByZWFsbHkgbmljZSBt
dWx0aW1lZGlhIHNvYy4KCkNhbiBiZeKApi4gYnV0IGlzIG5vdCBkdWUgY3VycmVudCBsYWNrIG9m
IGhldmMvdnA5IGh3IGRlY29kZSBpbiBtYWlubGluZSBkdWUgbGFjayBvZiBya3ZkZWMyIHN1cHBv
cnQKVGhpcyBzZWVtcyB0byBiZSBjbGVhciBibG9ja2VyIGZvciBtYW55IG11bHRpbWVkaWEgdXNl
IGNhc2VzIDotKAoKSGF2aW5nIHJrdmRlYzIgc3VwcG9ydCB2aWEgdjRsMl9yZXF1ZXN0IGluIG1h
aW5saW5lIGltaG8gd2lsbCBtYWtlIHJrMzV4eCBraWxsZXIgc29jIGZvciBtdWx0aW1lZGlh4oCm
LgoKcHM6IHJrdmRlYyBzdXBwb3J0IHNlZW1zIGF2YWlsYWJsZSBzaW5jZSB5ZWFycyBvbiBtYWlu
bGluZSBhbmQgd29ya3Mgd2VsbC4KU28gbWF5YmUgcmt2ZGVjIGNvZGUgYmFzZSBjYW4gYmUgYmFz
aXMgdG8gZ3JhZHVhbGx5IGFkZGVkIHN1cHBvcnQgZm9yIHJrdmRlYzI/CiAgIAoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
