Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98AD2CCD1AF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:Subject:From:To:MIME-Version:Date:
	Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ANjlKOP9w4Z1XnaJ2/743EOf5AYZfhkZrS75jl+bOBA=; b=uzjqTHFhuQAR80
	BZ+yXoe1uEmzSZysxeEKXelAXhlvoq8pWrucvGAzo3jgyWEOXg4SPHaRJ8eTLjbxD4/zYWwbvOJBR
	REX7vLzhOGJ6uRUDBIGAvUvQ+CA2RnvF4rUykHYLRo4ck1mV2d/ffga3n0/ojU1acxtMTDSovcmpj
	jEq5MUYK7lwLhFolBAcRH1/v22IiqzAs/vCZ8hiIR7HmaFskjxV+Lcbn88dhE/Qt7e80VchkfI/tT
	zkUaxPjL7RV4ykOcX2NFEkvP1A0zmwmM4EF7erN119FIapbBOTzrDfs0joZKvgIbgIFXAXmpPpSx1
	qtaksEbU1LYxpVnPwuUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVq-0000000D9JD-3yEm;
	Mon, 20 Oct 2025 11:57:18 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBR6-0000000CbES-0Vsp;
	Thu, 19 Jun 2025 09:19:57 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-b26fabda6d9so113044a12.1;
        Thu, 19 Jun 2025 02:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750324795; x=1750929595; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:subject:from:reply-to:content-language
         :to:user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v/4YlE3HAl9brMdxqBP04WkjP+nK0l6GdDNJGUg3hDA=;
        b=Z2GxDsTOaVEZiOTnGiaYBo9E04uYsVL7dYTIByypoz4J2x2JnfKYdx6QDd098TBnRN
         R8GewgPPvowgXjpx3jHZ0McvvEmEyr/XALK6gTe+ovHBwPG+p9hkBv3EDe+M0B5Yz3hZ
         AQcImc7bC4sw9SSMmizU029wuY4tn/HmJCQlkTT6Ff0xn6yy2IZTKeFq9b1t47BSjHSo
         z9S6D2JV+di88lyxEZs9q5/2F8c+pwoQrInanuiU+ZBpQS8YuKodpo9x4xR2+t4tr4MG
         UBO0Mk2cA/5MFUcPRiusa6sA5oBK4gAhuYpX5wY2Ey9AAjhgeZvPSxdhag4Nv9JmcR6u
         9PWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750324795; x=1750929595;
        h=content-transfer-encoding:cc:subject:from:reply-to:content-language
         :to:user-agent:mime-version:date:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v/4YlE3HAl9brMdxqBP04WkjP+nK0l6GdDNJGUg3hDA=;
        b=Uv0LoqnbxN5xuB/i3oFiUK9VxfI3aT2foTIXkN/iMXYwTo276Sq2uyZejZEYcfAOow
         9We2691reB53uuDXGhJ0wfKpQF/yPKoiTUYnPP9tjcgYhAJzyj5WP0KOK9AWALXnR7K4
         5eU5sPCjcwvaT92MsfOpOS3F5gLt1SJcByTexUSaK24waFhB2oy/cvqVEEzy26s+tYQV
         I/a9ICwDc3H6uYNllKnPm/CXLt4QdgMlnLz09wrlQn37Cln0DGzk50VfE+Bne8auSw4U
         xRriANY4ddoSXjidLj9ayIdS7LbO9JbhtPSRac+8YDerlujxdTBgcwNs0KfVbwDN+/nR
         Q4JA==
X-Forwarded-Encrypted: i=1; AJvYcCVnWWc0KwK5apA40cI4apJ10eT15WKEOfBs0CUOJiYCrg53kybbDrK43gIt98aU6B60JGmsv0nQbyo9YQlZxNU=@lists.infradead.org, AJvYcCWL78zE+otrJ/wfpAMcUqzORxl6WXQsGAh9YBXIHLQWeN/rc7w3tO2TamrhFDd01JzTPl98JQMk7tFMGMCOdMiI@lists.infradead.org
X-Gm-Message-State: AOJu0Yxi2wBsyKlWaUC2AP6HxC+B5RLPv/GI3r7p2T92izQFNdA0/wmG
	Kyi1E51bQoEywt6B42aZ2uhApEjQysNleVTp6tLKAsyYHmv8gJ+WAusN
X-Gm-Gg: ASbGncvi9RS9/HhNUreDsGAy+Z4pMOwGQ/FMqT1psaedJQB4f5oWsx4IfSo4r91ldI8
	DiwhmuxorSZyXZtTemUzqOkuxDMozSt2UGO7GvW/lQeMxrCW1d8WAQJLTPCaH2EyFydMYmvH1fj
	dBqH1ut0152U7FtUuXenFLrEe9FMSy5UxF2e+Ud/Md+dHkjDc9Zm4jX6APgqp/iQnDnYVH5Bqri
	z9UKVxUWubpeBMTA7Pxcc1UgCl9d9gPevOQXY7GJ1lys5ggooq21PtnP+jw9IxAqYYCJNjsWX1o
	pVdcMkELEZVti5AV9XK6f38JTqS4L0ImiHBi9PK2CcX5rwdmihIDaA==
X-Google-Smtp-Source: AGHT+IEOwVnmlW8HJGJmZZDAcMv1C94tin+GyGqBRrpDOir6cIrcvjw4rGkN6VVwGeWeSc86EeXQ9w==
X-Received: by 2002:a17:902:c40f:b0:22e:6d69:1775 with SMTP id d9443c01a7336-2368edfcb64mr66047925ad.11.1750324794607;
        Thu, 19 Jun 2025 02:19:54 -0700 (PDT)
Received: from [0.0.0.0] ([2a09:bac1:3b40:120::16:1d2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3157a615170sm2229196a91.0.2025.06.19.02.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 02:19:53 -0700 (PDT)
Message-ID: <9f098eab-7b98-4827-8538-3cab0e8d7c63@gmail.com>
Date: Thu, 19 Jun 2025 17:19:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: detlev.casanova@collabora.com
Content-Language: en-US
From: Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH v4 4/6] media: rockchip: Introduce the rkvdec2 driver
Cc: alchark@gmail.com, andrzej.p@collabora.com, cassel@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.perchanov@intel.com,
 dsimic@manjaro.org, ezequiel@vanguardiasur.com.ar,
 gregkh@linuxfoundation.org, heiko@sntech.de, hverkuil@xs4all.nl,
 jacopo.mondi@ideasonboard.com, jeanmichel.hautbois@ideasonboard.com,
 jonas@kwiboo.se, kernel@collabora.com, kieran.bingham@ideasonboard.com,
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, Jianfeng Liu <liujianfeng1994@gmail.com>,
 mchehab@kernel.org, naush@raspberrypi.com, nicolas.dufresne@collabora.com,
 robh@kernel.org, sakari.ailus@linux.intel.com,
 sebastian.reichel@collabora.com, tomi.valkeinen@ideasonboard.com,
 umang.jain@ideasonboard.com
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_021956_159518_1B9DCDA0 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:57 -0700
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
Reply-To: 20250325213303.826925-5-detlev.casanova@collabora.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGV0bGV2LAoKT24gVHVlLCAyNSBNYXIgMjAyNSAxNzoyMjoyMCAtMDQwMCwgRGV0bGV2IENh
c2Fub3ZhIHdyb3RlOgoKID4rwqDCoMKgIMKgwqDCoCBjYXNlIFJLVkRFQzJfQUxMT0NfU1JBTToK
ID4rwqDCoMKgIMKgwqDCoCDCoMKgwqAgdmlydF9hZGRyID0gKHVuc2lnbmVkIGxvbmcpY3R4LT5y
Y2JfYnVmc1tpXS5jcHU7CiA+KwogPivCoMKgwqAgwqDCoMKgIMKgwqDCoCBpb21tdV91bm1hcChy
a3ZkZWMtPmlvbW11X2RvbWFpbiwgdmlydF9hZGRyLCByY2Jfc2l6ZSk7CgpJJ20gdGVzdGluZyB5
b3VyIHBhdGNoIHdpdGggZmZtcGVnIHBhdGNoZWQgd2l0aCB2NGwyLXJlcXVlc3QgcGF0Y2hlc1sx
XSwgCmFuZCBJIHVzdWFsbHkKCmdldCBrZXJuZWwgcGFuaWMgaGVyZS4gQWZ0ZXIgY2hlY2tpbmcg
cmt2ZGVjLT5pb21tdV9kb21haW4gYmVmb3JlIApydW5uaW5nIGlvbW11X3VubWFwLAoKSSBjYW4g
cGFzcyBmbHVzdGVyIGZmbXBlZyB2NGwyLXJlcXVlc3QgdGVzdC4gSGVyZSBpcyBteSBwYXRjaCBi
YXNlZCBvbiAKeW91ciBjb21taXQ6CgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmt2ZGVjMi9ya3ZkZWMyLmMgCmIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya3ZkZWMyL3JrdmRlYzIuYwppbmRleCA3NTc2ODU2MTM5OS4uMTIyYmNkY2ViZDQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjMi9ya3Zk
ZWMyLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMyL3JrdmRl
YzIuYwpAQCAtNjgxLDggKzY4MSw4IEBAIHN0YXRpYyB2b2lkIHJrdmRlYzJfZnJlZV9yY2Ioc3Ry
dWN0IHJrdmRlYzJfY3R4ICpjdHgpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3dp
dGNoIChjdHgtPnJjYl9idWZzW2ldLnR5cGUpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjYXNlIFJLVkRFQzJfQUxMT0NfU1JBTToKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdmlydF9hZGRyID0gKHVuc2lnbmVkIGxvbmcpY3R4LT5yY2Jf
YnVmc1tpXS5jcHU7Ci0KLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlvbW11X3VubWFwKHJrdmRlYy0+aW9tbXVfZG9tYWluLCB2aXJ0X2FkZHIsIApyY2Jfc2l6
ZSk7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmt2
ZGVjLT5pb21tdV9kb21haW4pCisgaW9tbXVfdW5tYXAocmt2ZGVjLT5pb21tdV9kb21haW4sIHZp
cnRfYWRkciwgcmNiX3NpemUpOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBnZW5fcG9vbF9mcmVlKGN0eC0+ZGV2LT5zcmFtX3Bvb2wsIHZpcnRfYWRkciwg
CnJjYl9zaXplKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgYnJlYWs7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSBSS1ZERUMyX0FM
TE9DX0RNQToKCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL2FtYXppbmdmYXRlL0ZGbXBlZy9jb21t
aXRzL242LjEuMS1uZXctcGF0Y2hlcy8KCgpCZXN0IHJlZ2FyZHMsCgpKaWFuZmVuZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
