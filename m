Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F664C2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 14:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yqFBCKoJdo4sW0l3HmliPFtePgG2ekgcGET+eVwXtY=; b=bNl6ybGdQVTzlF
	/TuprHtoQrgoisizZWlrmSbAJRya73WsFigrtIrMAWkfuU1dvx9QGB6HvHSbDOJPIRRRevqOSSVPr
	v9pPx4LQrELvtg8png1Z+Y2aUAF0tsZ6nm7bwC/kk5/+GFi295y19WMi4HIc4y0neeLWFgRrW2PuD
	VFqJ/iJbbdcpKIn5M6q0MPfx8Tt9Irg81aFxR0pKXCuLFVI38his7o1vak8mOgBmMzMgKENt518Sf
	LZbbx6rk/7ZFTwKQZa6hs+OpA9i/NiEqFovp0vpqgLxwPRiLLCXGImzBOVVfux56sdJoJZ4IytX+w
	YGV/fqYk2Bf1jbCY7Q/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCyn-0000000B3d5-0UIa;
	Mon, 17 Jun 2024 14:05:05 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJCyk-0000000B3bQ-1jEa
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 14:05:04 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-795fb13b256so420934285a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 07:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718633101; x=1719237901; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VYuchBzcVq+nntl0rByVP4I0/xMFrP/odXfBrhxA/v4=;
        b=w6yY/fIc98tL/PteB+f4//RJFvDrm+ZGRp5vKCTfLJfPyMGLQer1u+om3mcB6tGTlp
         lhykRjqC0p98z4SKhsmpaifRbpY4vYuWdJTpJC1F+mKmnVrgpKc8BA/MIWgDVWNmEQuS
         Gvo4tqX7MZbIPf09dUbOmu8FepAnG++IVZSCwQa5puN4HrVP24leqvGNXYMHZa/MLrM2
         YLHEyYCvcHaIzJZrv8Qw3dfA+iNDk27LcogpqtpQAfjeZnY5NK5wNQo37e11+HYnNkVT
         cIEdIlpK4qV1OsIlheRmNBgj5U/fPQ+gEFg2t+6Xn5V5WPOFqkPTgD2ebh/aEcwHikF/
         Aa3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718633101; x=1719237901;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VYuchBzcVq+nntl0rByVP4I0/xMFrP/odXfBrhxA/v4=;
        b=fc9hXC+BoDtTmTzmoIHLduJKXsBaL+qUDzIcCiLqXJovfLJBq/gCWGDaQ2n6TMUdxA
         tC9ePnmNy++zn70NbSeOCJJ6rY9WhBEsM+YSy2KSUCDgoL5cxL/ujYkMwOmkJ2kSGjtc
         cbkXjtm521rPR4xcfvxZKu51Q3tEpoejE4SsGXoE6ROkR3O/rwBSzXav2hJrHYuVh8Vl
         x8jYuHEAq+XoMPUR4CWFtiOjh8GkNWrzoIWe8FLX75PGysR1ZHwOiGXwXi6b/qOEBrJC
         oPqIGTRCyxnWKPjjo3BLOT8ABpJhsj8dZcSg2zmOtcq9gHoTEnXqgMG5RAsU1VGhtsmN
         pI6A==
X-Forwarded-Encrypted: i=1; AJvYcCXxJrgqt78YpyzhHAHULEErLQqzFMyhZJ+0I5crp84IQHjk7vHczo9mwGOorJst4t269SfxDSUXAt2vuRkHZH8lqWNht32BPDGpu/kdGKBIT2Uv
X-Gm-Message-State: AOJu0Yy2td7quHl+/g9029NbfSWQ6PHLPVmoahDCDtkR7p78aSR77Se9
	IrhUKBPmbCD3UaR+Yt3QzYevWz/qo9MFP2MBbZ8SX0od/wRFk27MAzagKiFWaMQ=
X-Google-Smtp-Source: AGHT+IFk6OpTSQ6HI1XE/Anmj9+FlmPZSHzWjQ2P2c9rtwWOS09Hy7PV7JVncckLBidfUl/d/TkDUg==
X-Received: by 2002:a05:620a:29c1:b0:798:d789:c494 with SMTP id af79cd13be357-798d789c9c6mr1428684685a.29.1718633101025;
        Mon, 17 Jun 2024 07:05:01 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:57da::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abe6a973sm429001985a.128.2024.06.17.07.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 07:05:00 -0700 (PDT)
Message-ID: <f295f41ef1c9ee920ac3ac8e70ccf672ba7c9648.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, detlev.casanova@collabora.com
Cc: alchark@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org, 
	cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org, 
	didi.debian@cknow.org, dsimic@manjaro.org, gregkh@linuxfoundation.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	mchehab@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com
Date: Mon, 17 Jun 2024 10:04:59 -0400
In-Reply-To: <20240617094735.27928-1-liujianfeng1994@gmail.com>
References: <20240615015734.1612108-2-detlev.casanova@collabora.com>
	 <20240617094735.27928-1-liujianfeng1994@gmail.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_070502_775846_5F38446C 
X-CRM114-Status: GOOD (  14.51  )
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

SGksCgpMZSBsdW5kaSAxNyBqdWluIDIwMjQgw6AgMTc6NDcgKzA4MDAsIEppYW5mZW5nIExpdSBh
IMOpY3JpdMKgOgo+IEhpIERldGxldiwKPiAKPiBUaGFua3MgYSBsb3QgZm9yIHlvdXIgd29yayEg
SSB0cnkgdG8gdXNlIHJrdmRlYzIgd2l0aCBjaHJvbWl1bSBidXQgaXQKPiBjYW4ndCBwbGF5IGgy
NjQgdmlkZW8uIEhlcmUgaXMgdGhlIGxvZyBvZiBjaHJvbWl1bToKPiAKPiBbNTc5OTo1ODczOjA2
MTcvMTcxMjI0Ljg1MDA2MTpWRVJCT1NFMjp2aWRlb19kZWNvZGVyX3BpcGVsaW5lLmNjKDQ3Myld
IEluaXRpYWxpemUoKTogY29uZmlnOiBjb2RlYzogaDI2NCwgcHJvZmlsZTogaDI2NCBoaWdoLCBs
ZXZlbDogbm90IGF2YWlsYWJsZSwgYWxwaGFfbW9kZTogaXNfb3BhcXVlLCBjb2RlZCBzaXplOiBb
MTkyMCwxMDgwXSwgdmlzaWJsZSByZWN0OiBbMCwwLDE5MjAsMTA4MF0sIG5hdHVyYWwgc2l6ZTog
WzE5MjAsMTA4MF0sIGhhcyBleHRyYSBkYXRhOiB0cnVlLCBlbmNyeXB0aW9uIHNjaGVtZTogVW5l
bmNyeXB0ZWQsIHJvdGF0aW9uOiAwwrAsIGZsaXBwZWQ6IDAsIGNvbG9yIHNwYWNlOiB7cHJpbWFy
aWVzOkJUNzA5LCB0cmFuc2ZlcjpCVDcwOSwgbWF0cml4OkJUNzA5LCByYW5nZTpMSU1JVEVEfQo+
IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUwOTE1OlZFUkJPU0UyOnY0bDJfdmlkZW9fZGVjb2Rl
ci5jYygxODIpXSBWNEwyVmlkZW9EZWNvZGVyKCk6Cj4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44
NTEyMTg6VkVSQk9TRTE6djRsMl9kZXZpY2UuY2MoMTI4KV0gT3BlbigpOiBObyBkZXZpY2VzIHN1
cHBvcnRpbmcgSDI2NCBmb3IgdHlwZTogMAo+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUxMzQ2
OlZFUkJPU0U0OnY0bDJfcXVldWUuY2MoMTA2OSldIFRoaXMgcXVldWUgZG9lcyAgc3VwcG9ydCBy
ZXF1ZXN0cy46IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkgKDIpCgpUaGlzIG9uZSBpbmRpY2F0
ZXMgdGhhdCBWNEwyX0JVRl9DQVBfU1VQUE9SVFNfUkVRVUVTVFMgbWlnaHQgYmUgbWlzc2luZyBp
biB0aGUKUkVRQlVGUyBpbXBsZW1lbnRhdGlvbi4gSSBzdXNwZWN0IEdTdHJlYW1lciBzaW1wbHkg
YXNzdW1lcyB0aGlzIHRvZGF5IGZvciBkcml2ZXIKZXhwb3Npbmcgc3RhdGVsZXNzIGZvcm1hdHMg
KHdoaWNoIGlzIGZhaXIsIGl0cyBub3QgYSBjb21wbGlhbmNlIHRlc3QsIGFuZCB3ZQpkb24ndCBo
YXZlIGEgY29kZWMgY29tcGxpYW5jZSB5ZXQpLgoKSSdkIHN1Z2dlc3QgdG8gY2hlY2sgYW5kIGZp
eCB0aGlzIG9uZSwgYW5kIHJldHJ5LCBtaWdodCBvbmx5IGJlIG5vaXNlLCBtaWdodCBiZQp0aGUg
bWFpbiBjYXVzZSwgd2UgY2Fubm90IHRlbGwuCgo+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUx
NDI2OlZFUkJPU0UxOnY0bDJfdmlkZW9fZGVjb2Rlci5jYyg0NzYpXSBJbml0aWFsaXplQmFja2Vu
ZCgpOiBVc2luZyBhIHN0YXRlbGVzcyBBUEkgZm9yIHByb2ZpbGU6IGgyNjQgaGlnaCBhbmQgZm91
cmNjOiBTMjY0Cj4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44NTE2ODc6VkVSQk9TRTE6djRsMl92
aWRlb19kZWNvZGVyLmNjKDU5OCldIFNldHVwSW5wdXRGb3JtYXQoKTogSW5wdXQgKE9VVFBVVCBx
dWV1ZSkgRm91cmNjOiBTMjY0Cj4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44NTE3OTc6VkVSQk9T
RTE6djRsMl92aWRlb19kZWNvZGVyLmNjKDYzNildIEFsbG9jYXRlSW5wdXRCdWZmZXJzKCk6IFJl
cXVlc3Rpbmc6IDE3IE9VVFBVVCBidWZmZXJzIG9mIHR5cGUgVjRMMl9NRU1PUllfTU1BUAo+IFs1
Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODY3Njg3OlZFUkJPU0UxOnY0bDJfcXVldWUuY2MoMTUxMSld
IFN0cmVhbW9uKCk6IChPVVRQVVRfTVBMQU5FKSBWSURJT0NfU1RSRUFNT04gZmFpbGVkOiBJbnZh
bGlkIGFyZ3VtZW50ICgyMikKPiBbNTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg2NzkwMjpWRVJCT1NF
MTp2NGwyX3ZpZGVvX2RlY29kZXIuY2MoOTM3KV0gU3RhcnRTdHJlYW1WNEwyUXVldWUoKTogRmFp
bGVkIHRvIHN0cmVhbW9uIFY0TDIgcXVldWUuCj4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44Njgw
MDk6VkVSQk9TRTE6djRsMl92aWRlb19kZWNvZGVyLmNjKDEzNzcpXSBTZXRTdGF0ZSgpOiBFcnJv
ciBvY2N1cnJlZCwgc3RvcHBpbmcgcXVldWVzLgo+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODY4
MTA1OkVSUk9SOnY0bDJfdmlkZW9fZGVjb2Rlci5jYygxMjApXSBTdGFydFN0cmVhbVY0TDJRdWV1
ZSBmYWlsZWQgYXQgRGVjb2RlQG1lZGlhL2dwdS92NGwyL3Y0bDJfdmlkZW9fZGVjb2Rlci5jYzo5
MTUKPiBbNTc5OTo1ODg2OjA2MTcvMTcxMjI0Ljg3MTg5ODpXQVJOSU5HOnY0bDJfdmlkZW9fZGVj
b2Rlcl9iYWNrZW5kX3N0YXRlbGVzcy5jYygxMjYpXSBUaGVyZSBpcy9hcmUgMCBwZW5kaW5nIENB
UFRVUkUgcXVldWUgYnVmZmVycyBwZW5kaW5nIGRlcXVldWluZy4gVGhpcyBtaWdodCBiZSBmaW5l
IG9yIGEgcHJvYmxlbSBkZXBlbmRpbmcgb24gdGhlIGRlc3RydWN0aW9uIHNlbWFudGljcyAob2Yg
dGhlY2xpZW50IGNvZGUuCj4gCj4gSGVyZSBpcyB0aGUgY2hyb21pdW0gY29kZSBmYWlsZWQgd2hl
biBjYWxsaW5nIFZJRElPQ19TVFJFQU1PTjoKPiBodHRwczovL2dpdGh1Yi5jb20vY2hyb21pdW0v
Y2hyb21pdW0vYmxvYi8xMjUuMC42NDIyLjYwL21lZGlhL2dwdS92NGwyL3Y0bDJfcXVldWUuY2Mj
TDE1MDgKPiAKPiBJJ20gcnVubmluZyBjaHJvbWl1bSB2MTI1LjAuNjQyMi42MCBhbmQgSSBjYW4g
ZGVjb2RlIDEwODBwIGgyNjQgd2l0aAo+IGhhbnRybyBnMSBkZWNvZGVyIG9uIHJrMzU4OC4KCkFy
ZSB5b3UgdXNpbmcgbWluaWdibSA/IEJlY2F1c2UgaWYgeW91IGRvLCB3ZSBkb24ndCBoYXZlIG1p
bmlnYm0gY29kZSBmb3IgdGhpcwpkcml2ZXIgKGFuZCBoYXZlIG5vIHBsYW4gdG8gZG8gc28sIHNp
bmNlIHdlIGRvbid0IGFpbSBmb3IgQ2hyb21lT1Mgc3VwcG9ydCkuCgpOaWNvbGFzCgo+IAo+IEJl
c3QgcmVnYXJkcywKPiBKaWFuZmVuZwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
