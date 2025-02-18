Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12149C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 12:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjb9ImuMMKP0pxK9hnhi30+1zxc3FlWSh+vjM4fqgh8=; b=NaEcNLhkr6QfEZ
	yMPQhGPJIW1/xtdsakZtVKqDcPJjE8l+qVXDHXj72NIIGBDACdIROoV59j/BKDFBnAq7vOlajbrBW
	G6tjafDdgpWFYL+p5nsuS96fAqYJjfvFfCJD9T4YIwQSIFNiT4Xxs0k9udd+wLElGdKTkJ1MZyNhw
	SjgzKR1Il+sddKMw1kqtT4Q0Cy0ZmlAgoYPLcCG35tSnIkOfpwGoGCvSZ0FXdsCWNFZ09N65oIhKb
	kETpRr1fDPK2Vu8UETPofr3+u2Rd3FiJpVAlP795WdZVvAhnRYRFJGdE/saHvBGde4HGRDDdW5fzg
	9kS6BFdOtzQGq0SoD2tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkMiu-000000089Bz-1Y1r;
	Tue, 18 Feb 2025 12:29:12 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkMYh-000000087LY-2G7J;
	Tue, 18 Feb 2025 12:18:40 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2fc8482c62dso392886a91.3;
        Tue, 18 Feb 2025 04:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739881119; x=1740485919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rcOf/+mAe7HjVKdjr7yO9VSKEbj6DVv1uV/KGTc/++g=;
        b=kvootxZ214JhbdRwCeq6w1pAB1ECyQBDD6kJgosuSsDettGWueZJGl+F1WbMrvV0cR
         zGrDmeq6fJ3P4t2CBmjo539p0yR1bCGdJIk21heJevYGGhLfL7wpJbKcvQK4Fb9T7fVa
         YPUHwMXqVrBJy3eWtuUYuI1iHjKaGfiyO0ZHDk/51uqk7r7cGNZ3KXfDPgxNQn1YPXPQ
         PpWdDGk1N/dnM70OdcoMff5u+xMdR7Z8DHxf6v72fsqvNP6XgTdeaQdvJQyGHH0I+8rH
         dW0+NnjpMp2QuZv660lVLNnG8clYVzCso4Zwig0wO5wz0bvi6hZvqL+Uu/eaqKt+SMlG
         eKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739881119; x=1740485919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rcOf/+mAe7HjVKdjr7yO9VSKEbj6DVv1uV/KGTc/++g=;
        b=AaWsSdjIGCzOR7BP/DLD6415VUNDHGYkL8bBVdK+yyzDvKVQ4WAGn50OvPYnE+xP2t
         cl5VqnhH0L5iSJP3PKLrlFAFC4vdsNDBDYIIGeUI3QnaYnhY5UcwaXfMeMZR5WpPax+P
         XsscIoOrlTzI3BhV99BSZ5MlQPMTpa0TvLXfZ90nG3TKeuhsevNUnbCxEzYNpZAQxRMt
         Sj4fzq5l7ulOqZ5Ny3H9oJ7wmwSuRDJYoOZlKy6pThlWLOULVtn1H5sRecorQ7wUoAwS
         6x35gETN/Zu72bDRmR2qvnMu5H0kTLqGJ6L1xc9adtviiQZWZwd30/CpzFrEZ84jX2Ya
         Xy/A==
X-Forwarded-Encrypted: i=1; AJvYcCUGKuxUlcwHnwL1EkueZkUx0xrlUf0fdH+56Y9o2TlgLq/AcODC3VFKU9fJ5C6mVTlFLxY48WfyFZo79o1gX/k=@lists.infradead.org, AJvYcCVB3bCkE1Ul/eIN8CxCB5F8Qg0kNNpgSG6tMQGSxQfYao8GckrDW+f+jYSVBCJ5JE+HvlusJ7Jsc6NjW+RgHdXe@lists.infradead.org
X-Gm-Message-State: AOJu0Yztv56wMfiruqzRltRjPQA6p6k8upkCOXafKjm8FxuL9TPoU+HU
	hMaoTJQd+cnXAaodWmf8aSZC1vB3jMP6dGal5WCLtF8f2zyVV65o
X-Gm-Gg: ASbGncuPXe24qcTZBpPoqYlP7z3F9hm5SnioEJOprbq+lo8InTXubVncTpetrpdyfnu
	66/ijsncGaeACmaoBjVXPlBDjGUwukFKrgu6Kpl4c5az1zwrsthumZqr0G6ouysT8aw5/i2AROx
	o2Gr0Bosm47utRt6GdpMx9v0gyHe4z84JSAlUmn7nIhd9qemJr1p60loU7z9WQ08ceacM/a1xMN
	LS+r3y+XvF6vdLn0YQIP5gIvZ3UadylqDOkR/M4Qi+DqTHvaXfvI6fW17FIeR1t9ecMTZkyS0CZ
	Pj5pJxUmyl4eOM+KJziZ
X-Google-Smtp-Source: AGHT+IHPsPfeZPNuDFA8wzs+mlVOqsQ83YHZnd3qlJa4+vQqXKKzygw1wD0+aOsxjfqbOZCURGWEyg==
X-Received: by 2002:a17:90b:2250:b0:2fc:1370:9c2f with SMTP id 98e67ed59e1d1-2fc4103cd0dmr8326098a91.4.1739881118858;
        Tue, 18 Feb 2025 04:18:38 -0800 (PST)
Received: from rock-5b.. ([221.220.131.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fc13ac19aesm9896535a91.17.2025.02.18.04.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 04:18:38 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: heiko@sntech.de
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source to VOP2 on RK3588
Date: Tue, 18 Feb 2025 20:17:46 +0800
Message-ID: <20250218121749.1382322-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <1919367.CQOukoFCf9@diego>
References: <1919367.CQOukoFCf9@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_041839_574088_BF0A1C17 
X-CRM114-Status: GOOD (  13.69  )
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
Cc: simona@ffwll.ch, devicetree@vger.kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, robh@kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, kernel@collabora.com, airlied@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiBUdWUsIDE4IEZlYiAyMDI1IDExOjAwOjU3ICswMTAwLCBIZWlrbyBTdMO8
Ym5lcndyb3RlOgo+U28gSSBndWVzcyBzdGVwMSwgY2hlY2sgd2hhdCBlcnJvciBpcyBhY3R1YWxs
eSByZXR1cm5lZC4KCkkgaGF2ZSBjaGVja2VkIHRoYXQgdGhlIHJldHVybiB2YWx1ZSBpcyAtNTE3
OgoKcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBbZHJtXSAqRVJST1IqIGZhaWxlZCB0
byBnZXQgcGxsX2hkbWlwaHkxIHdpdGggLTUxNwoKPlN0ZXAyIGNoZWNrIGlmIGNsa19nZXRfb3B0
aW9uYWwgbmVlZCB0byBiZSBhZGFwdGVkIG9yIGFsdGVybmF0aXZlbHkKPmNhdGNoIHRoZSBlcnJv
ciBpbiB0aGUgdm9wMiBhbmQgc2V0IHRoZSBjbG9jayB0byBOVUxMIG91cnNlbGYgaW4gdGhhdCBj
YXNlLgoKSSB0cmllZCB0aGUgZm9sbG93aW5nIHBhdGNoIHRvIHNldCB0aGUgY2xvY2sgdG8gTlVM
TCB3aGVuIGNsa19nZXRfb3B0aW9uYWwKZmFpbGVkIHdpdGggdmFsdWUgLTUxNywgYW5kIGhkbWkw
IGlzIHdvcmtpbmcgbm93LiBUaGVyZSBhcmUgYWxzbyBzb21lCmJvYXJkcyBsaWtlIHJvY2sgNSBp
dHggd2hpY2ggb25seSB1c2UgaGRtaTEsIEkgdGhpbmsgd2Ugc2hvdWxkIGFsc28gYWRkCnRoaXMg
bG9naWMgdG8gdm9wMi0+cGxsX2hkbWlwaHkwLgoKQEAgLTM3MzMsNiArMzc1MSwxNSBAQCBzdGF0
aWMgaW50IHZvcDJfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rl
ciwgdm9pZCAqZGF0YSkKIAkJcmV0dXJuIFBUUl9FUlIodm9wMi0+cGxsX2hkbWlwaHkwKTsKIAl9
CiAKKwl2b3AyLT5wbGxfaGRtaXBoeTEgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwodm9wMi0+ZGV2
LCAicGxsX2hkbWlwaHkxIik7CisJaWYgKElTX0VSUih2b3AyLT5wbGxfaGRtaXBoeTEpKSB7CisJ
CWRybV9lcnIodm9wMi0+ZHJtLCAiZmFpbGVkIHRvIGdldCBwbGxfaGRtaXBoeTEgd2l0aCAlZFxu
Iiwgdm9wMi0+cGxsX2hkbWlwaHkxKTsKKwkJaWYgKHZvcDItPnBsbF9oZG1pcGh5MSA9PSAtRVBS
T0JFX0RFRkVSKQorCQkJdm9wMi0+cGxsX2hkbWlwaHkxID0gTlVMTDsKKwkJZWxzZQorCQkJcmV0
dXJuIFBUUl9FUlIodm9wMi0+cGxsX2hkbWlwaHkxKTsKKwl9CisKIAl2b3AyLT5pcnEgPSBwbGF0
Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwogCWlmICh2b3AyLT5pcnEgPCAwKSB7CiAJCWRybV9lcnIo
dm9wMi0+ZHJtLCAiY2Fubm90IGZpbmQgaXJxIGZvciB2b3AyXG4iKTsKCkJlc3QgcmVnYXJkcywK
SmlhbmZlbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
