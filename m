Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 979F2C678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 15:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilX29SzRlSLsp7ZvdlGb5O+NDAQgv571FqcGtGBJwis=; b=TWxrPKjJh5Zd3N
	64+UKg9huCKZe3lY3VccHbsF0wCCnTByuduaLu8cfmdn8UGExmg2Smcm4d+0+g8w5W0kmN6+6Vkql
	sZ+YyWYiFbBYXNNLON0t94HVxDgmR7FJHtEegB7gOOuXbeZKjIOLflsQi7YqnLxdeSCYj+tsVLxYi
	bGKHkvUjfV7tiNyiR4unEvaS+WQixuy0kfkc7JmojopXrDEIrjAsuNgxUNjaH5+D1JSUoKPe449gB
	V6YAVZYSSNc21nLaQE7AcqYddzAgxWDbq89COgX1CHJjieACJCUsDRZ2i2JmK6zS7OgK3muRtGeed
	sfE1JL+1uvqQq7PYs0kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZVh-001Icq-W4; Tue, 07 Mar 2023 15:45:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZVf-001Ibu-VU
	for linux-rockchip@bombadil.infradead.org; Tue, 07 Mar 2023 15:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=8cVcU6vf3P7tWIhm0kR1cSYxiLWDb4NZaw72d9YIG+c=; b=KP3oiRDVUXDJ0Osg6oyjSoBwgy
	eByPNP7lI7laf5UfMeJSytXWhG9yeFBHP9yGJsj1GLMmb7nARBPr5FBWi1T5oT1ip2VLRjC/Cqprj
	8RroW6OqlDZc0I28pDrqNOKr3TUVOJM5fed9wUlRNDm4dMFqE7L9y7RfBsGg+Iz0UMqZiHfVDpDyT
	+aO1/aIELRbl0cwKmFBuWhl3jc/3ZxT9PImiVCaX+OmLzyIt2qgsw3VYd6YmD5K2t9Zc0awZ1rItZ
	nNdea1dqIalvYm0UnbBnFe27YQqcjoPpvsne6UY/WGIfdRlwYEGI3AWPYqRcqKVjU1vDgR+NYW62y
	18JGtwlg==;
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZZVb-00H4so-39
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Mar 2023 15:45:50 +0000
Received: by mail-pj1-x102b.google.com with SMTP id qa18-20020a17090b4fd200b0023750b675f5so16924582pjb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Mar 2023 07:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678203944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8cVcU6vf3P7tWIhm0kR1cSYxiLWDb4NZaw72d9YIG+c=;
        b=MAJbiaw/YQxz2rySEgttJx/i+zXTARQZ5RSihtSZwrSmfkqXLt2RosawTii4vCT9Wo
         2+Hb9ZC0rkVVlk04Ej6eexSFRnBBwaZSsGBTt25QEz8mtERoxzWtV/Hn7lIC2JnSnZMV
         nPU/rjGcFD6fM9I3dj8XpNCF/OAx/Yl+YzxFg6zLgtHO97RmayDltOqZLedIajlCbDKQ
         xAUhIZh8fphkbv+ENlyexWDzr8CmgQ3vSK2wXNdLlRBPOS1V9JzmkhhVf2Y+kD+V6hkZ
         gVV4rZmjgu9wCMunP45jyZ4knPqu7QnnVklG8kGseQYxcKYP8QH0KvWcpvxJDSI4eiTF
         ueIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678203944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8cVcU6vf3P7tWIhm0kR1cSYxiLWDb4NZaw72d9YIG+c=;
        b=29GTUW3C4bFM56Kefsu1q336D2G0dNFGrfqDuTh8AIHTg5z+VmqhMHxRSIGaZftDyN
         mqBcgQRghgcBCdhNaBvqqm+Sl3Uy8f54g+ptVPEf5piSfV7dvxDEUxFCIZ0yETlqmZHM
         Uj5gI+OtgWzaeg6cenaVs9twehRSiibl3fSur+516xdc7Qaf0aP2eFqi0Y7W9FDJD2IC
         uXvGES7mu42xIG+Vlr4HZP7HLKBK8VDWyRoWbdCgOctU0r6lZotl7IqZWCD8hjsBghlE
         140dyaG7c190rIfoqkf1GKSkNzJQSgcrYTqraoSZguICj1D4yCRn/CT4UqNaU9ttfIhk
         CAZQ==
X-Gm-Message-State: AO0yUKU0cpbeFvSVx8ViBKYRTouqbA/zHOkX7cOY5bgNgOOzzoD73tAf
	LVGZwQGhGBFBaG7agV8DONkvbUXNCCtgROg0X23uCe7/w07ZVpehX1I=
X-Google-Smtp-Source: AK7set/r9LOOqLZZ3FGrgI738xX+9fXxQSSUCeyv2SmEXVuf0zQ3G39Cr1UPfWdgTiJmA/aTP2anc3Kisdhg7Gj6XBI=
X-Received: by 2002:a17:903:2c1:b0:19c:d414:fe6e with SMTP id
 s1-20020a17090302c100b0019cd414fe6emr5734357plk.12.1678203944402; Tue, 07 Mar
 2023 07:45:44 -0800 (PST)
MIME-Version: 1.0
References: <20230307154157.1184826-1-zyytlz.wz@163.com>
In-Reply-To: <20230307154157.1184826-1-zyytlz.wz@163.com>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 7 Mar 2023 23:45:33 +0800
Message-ID: <CAJedcCwMDyM6rwNNJq1OL=UxUy2e0yH9RxJNmuJWS3k7zkYRvQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Zheng Wang <zyytlz.wz@163.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, 
	alex000young@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_154548_310074_9EA99A24 
X-CRM114-Status: GOOD (  19.40  )
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

SGksCgpUaGlzIHBhdGNoIGp1c3QgZml4IHRoZSByYWNlIGNvbmRpdGlvbiBpbiBoYW50cm9fcmVt
b3ZlLiBBbGwgb2YgdGhlCmFuYWx5c2lzIGlzIG1hZGUgYnkgc3RhdGljIGFuYWx5c2lzLgpTbyBp
dCBtYXkgYmUgZmFsc2UgcG9zaXRpdmVzLgpQbGVhc2UgZmVlbCBmcmVlIHRvIGxldCBtZSBrbm93
IGlmIHRoZXJlIGlzIHNvbWV0aGluZyBJJ3ZlIG1pc3NlZC4KClJlZ2FyZHMsClpoZW5nCgpaaGVu
ZyBXYW5nIDx6eXl0bHoud3pAMTYzLmNvbT4g5LqOMjAyM+W5tDPmnIg35pel5ZGo5LqMIDIzOjQz
5YaZ6YGT77yaCj4KPiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29yayBpcyBib3Vu
ZCB3aXRoCj4gaGFudHJvX3dhdGNoZG9nLiBUaGVuIGhhbnRyb19lbmRfcHJlcGFyZV9ydW4gbWF5
Cj4gYmUgY2FsbGVkIHRvIHN0YXJ0IHRoZSB3b3JrLgo+Cj4gSWYgd2UgY2xvc2UgdGhlIGZpbGUg
b3IgcmVtb3ZlIHRoZSBtb2R1bGUgd2hpY2ggd2lsbAo+IGNhbGwgaGFudHJvX3JlbGVhc2UgYW5k
IGhhbnRyb19yZW1vdmUgdG8gbWFrZSBjbGVhbnVwLAo+IHRoZXJlIG1heSBiZSBhIHVuZmluaXNo
ZWQgd29yay4gVGhlIHBvc3NpYmxlIHNlcXVlbmNlCj4gaXMgYXMgZm9sbG93cywgd2hpY2ggd2ls
bCBjYXVzZSBhIHR5cGljYWwgVUFGIGJ1Zy4KPgo+IFRoZSBzYW1lIHRoaW5nIHdpbGwgaGFwcGVu
IGluIGhhbnRyb19yZWxlYXNlLCBhbmQgdXNlCj4gY3R4IGFmdGVyIGZyZWVpbmcgaXQuCj4KPiBG
aXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVhbnVwIGluIGhhbnRyb19yZWxl
YXNlLgo+Cj4gQ1BVMCAgICAgICAgICAgICAgICAgIENQVTEKPgo+ICAgICAgICAgICAgICAgICAg
ICAgfGhhbnRyb193YXRjaGRvZwo+IGhhbnRyb19yZW1vdmUgICAgIHwKPiAgIHY0bDJfbTJtX3Jl
bGVhc2UgIHwKPiAgICAga2ZyZWUobTJtX2Rldik7IHwKPiAgICAgICAgICAgICAgICAgICAgIHwK
PiAgICAgICAgICAgICAgICAgICAgIHwgdjRsMl9tMm1fZ2V0X2N1cnJfcHJpdgo+ICAgICAgICAg
ICAgICAgICAgICAgfCAgIG0ybV9kZXYtPmN1cnJfY3R4IC8vdXNlCj4KPiBTaWduZWQtb2ZmLWJ5
OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pAMTYzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19kcnYuYwo+IGluZGV4IGIwYWVlZGFlN2I2NS4uODBiZDg1NmE0ZGE5IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
Cj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMK
PiBAQCAtMTA5OSw2ICsxMDk5LDcgQEAgc3RhdGljIGludCBoYW50cm9fcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4KPiAgICAgICAgIHY0bDJfaW5mbygmdnB1LT52NGwyX2Rl
diwgIlJlbW92aW5nICVzXG4iLCBwZGV2LT5uYW1lKTsKPgo+ICsgICAgICAgY2FuY2VsX2RlbGF5
ZWRfd29yaygmdnB1LT53YXRjaGRvZ193b3JrKTsKPiAgICAgICAgIG1lZGlhX2RldmljZV91bnJl
Z2lzdGVyKCZ2cHUtPm1kZXYpOwo+ICAgICAgICAgaGFudHJvX3JlbW92ZV9kZWNfZnVuYyh2cHUp
Owo+ICAgICAgICAgaGFudHJvX3JlbW92ZV9lbmNfZnVuYyh2cHUpOwo+IC0tCj4gMi4yNS4xCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
