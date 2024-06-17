Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE37FC2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 09:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jurt6wby0ZKy1othaZPgQe+EKp5qGZW9IQnTns65Ws4=; b=GpdVQfVsqgvIcU
	/UZCTF+YwPgLiuH5Gv2pDv66+yUlOYaZSJfs5id9Xnji3U5dNc58zqiNo0r1FOwBb8xEgbTiIjNuq
	f9/gkCnOqtidX+hu6yhrQ45IyMHGD7Phs6jG1XDt0ZUHUV4eUgbexylbbE/dVdIzwoEeVjXQFZemF
	u+vaLgcCAsDw0YvV52Aaip87+rqOhXdn8x3Yck2qkPG/0bgqh1PapVmm+1jKwKoqoCAm5l5uZw6Mi
	aEGrbfy09YYF4HzGtK1YSeUW/CDzaUiUicsaRf7RYLRGQfY8/ZiOaYCaAory6jFdbgZUl5S42Jr2G
	yZ/2DQQtUvl939iqoAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8xo-0000000A7mZ-1LPq;
	Mon, 17 Jun 2024 09:47:48 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8xj-0000000A7k8-3WLo;
	Mon, 17 Jun 2024 09:47:45 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-704313fa830so3156429b3a.3;
        Mon, 17 Jun 2024 02:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718617663; x=1719222463; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=usGpbKfnBPC6WUjY1RuxzYU4ZgAbIRTvzZTlT0vlyVY=;
        b=C9AVoUysktx10hNuHximDqNV8M2gE7sWIjUoqnBPzBTFaYDUJEdZC7UVCGTASmG1oP
         vpQDZtr2/X7RK71uRKwYVXg4Wj7FnlddnaDLmiaIiLyspGXnE8ToBoYREUTg17f5N+wa
         8aPZu/oyglDAJ2F4e6Rm8RGZAPdoOAyjmAhSsoGcbNlDl0JRSgIeQ1aWHegQrIA0AUJF
         /s0NeX/W4djnwjrZrOBhcEnUvZigWk6Jk/q+RmbEeSHGSz08eKpMqcaEnNznGdl7MNgn
         MHh9+fDFfS3boHAPhdM5A/jni8lQrzLjogs7VRsjjOrmTWCE2YDoWjeaesdnQXI4mzdH
         JKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718617663; x=1719222463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=usGpbKfnBPC6WUjY1RuxzYU4ZgAbIRTvzZTlT0vlyVY=;
        b=MyRsHh5RZbQEGGz6oRSOrzCG1OsF0KR4KtoAPkom9QCIaf6NjJYm7e4wTkHA+VFWd7
         o8K7d4G+3hJj5EOAXkqUwuqT7p48XQuBlXICEcJrHLg8X+Hvt0Suhv1d9zynfshEFjcb
         KEOUDR2qIP/EWEV/9X/ZbwZdJtfF8N3bX4LwupALB8226Xz8nz8l+Mu5VsLu5X8BWD1v
         JsKSfRFLuLNW/ChOms7YNtJvioFzUf1xDieV58+3FHdoAOSWVJlnPwwj5Tk6jszq8duY
         n66DHE+H6Eec8piRWDjJyfQhLtZ6ieI6H5CsOIzmpJbNITyzhpRSDnYGVH5xpkNeKzsn
         TVog==
X-Forwarded-Encrypted: i=1; AJvYcCWXRauXC9yXzWXyPMI8hEBOwQ8YbvfwTbXHLgL/SwkTtgbSWnMJ60Aa8Gyfx9cYoQbeCSBTyxIgMTKoc0/bMVeOPfH/B9b3PyF9UGMZy3odbnGMluuK+CLke1d5L4Rb38sbkREVIs52Zq/8kO/QyAg64Xv5pKfEnrI=
X-Gm-Message-State: AOJu0YySMs+3LthdIPA9sIm+xGD0gvNH3pyhyXPDFtYcp/myyLUh0JFg
	M5/GWsHugtdPUgLw+QNhzGaIjhZ9oHg/gzqLrHCRlVZVT3eKsBYA
X-Google-Smtp-Source: AGHT+IFyxj6DeLjbzNAUMQS9A9wQr543YPl1rLY7vjP9jo76xxnmD/MsXV8euv4MDQM0ooApWPY5Kw==
X-Received: by 2002:a05:6a20:da92:b0:1b5:b214:efcc with SMTP id adf61e73a8af0-1bae82fd317mr10638457637.53.1718617662752;
        Mon, 17 Jun 2024 02:47:42 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c46701absm8576488a91.40.2024.06.17.02.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:47:42 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: detlev.casanova@collabora.com
Cc: alchark@gmail.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	dsimic@manjaro.org,
	gregkh@linuxfoundation.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	mchehab@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Mon, 17 Jun 2024 17:47:34 +0800
Message-Id: <20240617094735.27928-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
References: <20240615015734.1612108-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_024743_910141_88C981F6 
X-CRM114-Status: GOOD (  10.43  )
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

SGkgRGV0bGV2LAoKVGhhbmtzIGEgbG90IGZvciB5b3VyIHdvcmshIEkgdHJ5IHRvIHVzZSBya3Zk
ZWMyIHdpdGggY2hyb21pdW0gYnV0IGl0CmNhbid0IHBsYXkgaDI2NCB2aWRlby4gSGVyZSBpcyB0
aGUgbG9nIG9mIGNocm9taXVtOgoKWzU3OTk6NTg3MzowNjE3LzE3MTIyNC44NTAwNjE6VkVSQk9T
RTI6dmlkZW9fZGVjb2Rlcl9waXBlbGluZS5jYyg0NzMpXSBJbml0aWFsaXplKCk6IGNvbmZpZzog
Y29kZWM6IGgyNjQsIHByb2ZpbGU6IGgyNjQgaGlnaCwgbGV2ZWw6IG5vdCBhdmFpbGFibGUsIGFs
cGhhX21vZGU6IGlzX29wYXF1ZSwgY29kZWQgc2l6ZTogWzE5MjAsMTA4MF0sIHZpc2libGUgcmVj
dDogWzAsMCwxOTIwLDEwODBdLCBuYXR1cmFsIHNpemU6IFsxOTIwLDEwODBdLCBoYXMgZXh0cmEg
ZGF0YTogdHJ1ZSwgZW5jcnlwdGlvbiBzY2hlbWU6IFVuZW5jcnlwdGVkLCByb3RhdGlvbjogMMKw
LCBmbGlwcGVkOiAwLCBjb2xvciBzcGFjZToge3ByaW1hcmllczpCVDcwOSwgdHJhbnNmZXI6QlQ3
MDksIG1hdHJpeDpCVDcwOSwgcmFuZ2U6TElNSVRFRH0KWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44
NTA5MTU6VkVSQk9TRTI6djRsMl92aWRlb19kZWNvZGVyLmNjKDE4MildIFY0TDJWaWRlb0RlY29k
ZXIoKToKWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44NTEyMTg6VkVSQk9TRTE6djRsMl9kZXZpY2Uu
Y2MoMTI4KV0gT3BlbigpOiBObyBkZXZpY2VzIHN1cHBvcnRpbmcgSDI2NCBmb3IgdHlwZTogMApb
NTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg1MTM0NjpWRVJCT1NFNDp2NGwyX3F1ZXVlLmNjKDEwNjkp
XSBUaGlzIHF1ZXVlIGRvZXMgIHN1cHBvcnQgcmVxdWVzdHMuOiBObyBzdWNoIGZpbGUgb3IgZGly
ZWN0b3J5ICgyKQpbNTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg1MTQyNjpWRVJCT1NFMTp2NGwyX3Zp
ZGVvX2RlY29kZXIuY2MoNDc2KV0gSW5pdGlhbGl6ZUJhY2tlbmQoKTogVXNpbmcgYSBzdGF0ZWxl
c3MgQVBJIGZvciBwcm9maWxlOiBoMjY0IGhpZ2ggYW5kIGZvdXJjYzogUzI2NApbNTc5OTo1ODg2
OjA2MTcvMTcxMjI0Ljg1MTY4NzpWRVJCT1NFMTp2NGwyX3ZpZGVvX2RlY29kZXIuY2MoNTk4KV0g
U2V0dXBJbnB1dEZvcm1hdCgpOiBJbnB1dCAoT1VUUFVUIHF1ZXVlKSBGb3VyY2M6IFMyNjQKWzU3
OTk6NTg4NjowNjE3LzE3MTIyNC44NTE3OTc6VkVSQk9TRTE6djRsMl92aWRlb19kZWNvZGVyLmNj
KDYzNildIEFsbG9jYXRlSW5wdXRCdWZmZXJzKCk6IFJlcXVlc3Rpbmc6IDE3IE9VVFBVVCBidWZm
ZXJzIG9mIHR5cGUgVjRMMl9NRU1PUllfTU1BUApbNTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg2NzY4
NzpWRVJCT1NFMTp2NGwyX3F1ZXVlLmNjKDE1MTEpXSBTdHJlYW1vbigpOiAoT1VUUFVUX01QTEFO
RSkgVklESU9DX1NUUkVBTU9OIGZhaWxlZDogSW52YWxpZCBhcmd1bWVudCAoMjIpCls1Nzk5OjU4
ODY6MDYxNy8xNzEyMjQuODY3OTAyOlZFUkJPU0UxOnY0bDJfdmlkZW9fZGVjb2Rlci5jYyg5Mzcp
XSBTdGFydFN0cmVhbVY0TDJRdWV1ZSgpOiBGYWlsZWQgdG8gc3RyZWFtb24gVjRMMiBxdWV1ZS4K
WzU3OTk6NTg4NjowNjE3LzE3MTIyNC44NjgwMDk6VkVSQk9TRTE6djRsMl92aWRlb19kZWNvZGVy
LmNjKDEzNzcpXSBTZXRTdGF0ZSgpOiBFcnJvciBvY2N1cnJlZCwgc3RvcHBpbmcgcXVldWVzLgpb
NTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg2ODEwNTpFUlJPUjp2NGwyX3ZpZGVvX2RlY29kZXIuY2Mo
MTIwKV0gU3RhcnRTdHJlYW1WNEwyUXVldWUgZmFpbGVkIGF0IERlY29kZUBtZWRpYS9ncHUvdjRs
Mi92NGwyX3ZpZGVvX2RlY29kZXIuY2M6OTE1Cls1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODcxODk4
OldBUk5JTkc6djRsMl92aWRlb19kZWNvZGVyX2JhY2tlbmRfc3RhdGVsZXNzLmNjKDEyNildIFRo
ZXJlIGlzL2FyZSAwIHBlbmRpbmcgQ0FQVFVSRSBxdWV1ZSBidWZmZXJzIHBlbmRpbmcgZGVxdWV1
aW5nLiBUaGlzIG1pZ2h0IGJlIGZpbmUgb3IgYSBwcm9ibGVtIGRlcGVuZGluZyBvbiB0aGUgZGVz
dHJ1Y3Rpb24gc2VtYW50aWNzIChvZiB0aGVjbGllbnQgY29kZS4KCkhlcmUgaXMgdGhlIGNocm9t
aXVtIGNvZGUgZmFpbGVkIHdoZW4gY2FsbGluZyBWSURJT0NfU1RSRUFNT046Cmh0dHBzOi8vZ2l0
aHViLmNvbS9jaHJvbWl1bS9jaHJvbWl1bS9ibG9iLzEyNS4wLjY0MjIuNjAvbWVkaWEvZ3B1L3Y0
bDIvdjRsMl9xdWV1ZS5jYyNMMTUwOAoKSSdtIHJ1bm5pbmcgY2hyb21pdW0gdjEyNS4wLjY0MjIu
NjAgYW5kIEkgY2FuIGRlY29kZSAxMDgwcCBoMjY0IHdpdGgKaGFudHJvIGcxIGRlY29kZXIgb24g
cmszNTg4LgoKQmVzdCByZWdhcmRzLApKaWFuZmVuZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
