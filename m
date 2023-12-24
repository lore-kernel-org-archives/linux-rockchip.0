Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F32C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 22:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7XNJNjI3zEP5bXoRPe265GYZ5OTk2MRWSgYgi4OHgEM=; b=4xrovMCjfW3rDd9sq+X6LaUk+s
	G2YwlcqUQl0ZhETolUmnwzqlByjxUC3fjYATr5qdlr1oKYaqcnNz3JzvRH4NM73NXduq55OUWfGFN
	P4VUk9l7BHoRR0qQh+vdSeQoNh7i+x3FhLwSYCmx7dxAkfUHNGpF3HSqn4Yzaa7zcLl2y4WnBSUEs
	51VtEauGBEs8gyR3bmBGDLY+JLdVz/46PvqCdEHaX6aRFcy808ESCAFrVRG2iM/1pBSbXXw512PDx
	qaefLqlbjqFTT1599qb/vkXnHRpZQfxeNOhI9B9fkCBhv5EhXZP00/mnMgt5+C7TTxZWM4q4zyUp7
	Oj4KEdzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHXM0-009yHd-0p;
	Sun, 24 Dec 2023 22:53:52 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHXLw-009yGr-1C
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 22:53:50 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-67f85fe5632so23597766d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 14:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703458425; x=1704063225; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wdll6UwKVwZPH42CoQPOS/jYSrxbSPYDWOB7k/EjoAw=;
        b=eqNMqytyt78KXHVaH5IU0x4P+pu7vjDqkYnNT0zSyikl1C7mj3vZWOTTtPuIk1HO02
         Kb8KSd7G1euwhIsQd82qOLea8dl0km3sUgcBbqCg7t395bJ+zDKombHsg/2GWI7vQ1Xt
         k+0g1/TNgt8d4CylfzWLTKhxV/JTdmeAAFI2JOizRoyifrz9rNzS58oluMKvaKs4Gi3r
         5Cf7WX+v+ba0HpcnywMwosCiYxKcbONFZGSLPsWpWPOAokjZkdksZFE/B61xy+Wk+EUY
         8Rs4yl+CH7/idsYKN1ZQgsx23YdY8bx6EHqcDi7UukPEkdxj8crXRGkdGDEE2rLDsKEm
         jKzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703458425; x=1704063225;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wdll6UwKVwZPH42CoQPOS/jYSrxbSPYDWOB7k/EjoAw=;
        b=rZbPcpoTMUOgdH5j51KQUTAYENmDhDgv0SUPpJhKL8siDtN3As5nLg+VOGqkv6un3/
         oJ9oLI7KojMuJBy4IOYN6UBxN0uKLJJeXrRjyN18NZuFdkTImfhaCZZ3Qob/bOac71Y1
         pPCbENc3WFkphWvLal1qVTT0y+L83y8bR2FbJYFsgMB9k2cDzd71mCvQ10Ay8dzdGqhv
         lRp6LP7jIW+GkoXmoxkNxtAyBBZ+JCOlnYcxsybYPlhPxbvYWsKSiUJeQKl7cPrk5hvw
         pjattviSijGxwnwUzL7R6ypE9UjnTAkxiCHAvIG8Z/+0CDSpsydIEdT1z/xLNDA1SN2S
         gQHw==
X-Gm-Message-State: AOJu0YxBn9zkhDsuxVaCuLKIiHGDLT8NmajHsBB6UzRcMu2lXxnaTFLP
	9ode5UeL3dFDsRVESvL8NMWh07r2Avo=
X-Google-Smtp-Source: AGHT+IHl8Gw/ueuio8eBc8l/3LWbJiiG09Qdbd0B4ti+fFg4EvyIqM6shX/YVIVhA18hZgqYitbrYA==
X-Received: by 2002:a05:6214:2422:b0:670:b327:c86f with SMTP id gy2-20020a056214242200b00670b327c86fmr9396868qvb.17.1703458425162;
        Sun, 24 Dec 2023 14:53:45 -0800 (PST)
Received: from [192.168.20.212] (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id l14-20020ad4424e000000b0067f24d6a18fsm3259630qvq.15.2023.12.24.14.53.44
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Dec 2023 14:53:44 -0800 (PST)
Message-ID: <b217ef9f-e933-a9d9-0c04-0c4973cc1ed7@gmail.com>
Date: Sun, 24 Dec 2023 17:53:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
Subject: Re: Issue and question: anther pin config issue
To: linux-rockchip@lists.infradead.org
References: <OS0P286MB06419C18DF7CA73B2E33A907CD9AA@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <OS0P286MB06419C18DF7CA73B2E33A907CD9AA@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_145348_432036_8940967D 
X-CRM114-Status: GOOD (  14.39  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cj4gSGksIERldmVsb3BlcnMKPgo+IEkgd2FudCB0byByZXBvcnQgYW5vdGhlciBwaW4gY29uZmln
IGlzc3VlIGZvciByazM1NjYtcm9jLXBjCj4KPgo+ICAgICAgICAgIGJsdWV0b290aCB7Cj4gICAg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImJyY20sYmNtNDM0MzgtYnQiOwo+ICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZyazgwOSAxPjsKPiAgICAgICAgICAgICAgICAgIGNsb2NrLW5h
bWVzID0gImxwbyI7Cj4gICAgICAgICAgICAgICAgICBkZXZpY2Utd2FrZXVwLWdwaW9zID0gPCZn
cGlvMiBSS19QQzEgR1BJT19BQ1RJVkVfSElHSD47Cj4gICAgICAgICAgICAgICAgICBob3N0LXdh
a2V1cC1ncGlvcyA9IDwmZ3BpbzIgUktfUEMwIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAgICAgICAg
ICAgICAgICAgc2h1dGRvd24tZ3Bpb3MgPSA8JmdwaW8yIFJLX1BCNyBHUElPX0FDVElWRV9ISUdI
PjsKPiAgICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAg
ICAgICAgICAgICBwaW5jdHJsLTAgPSA8JmJ0X2hvc3Rfd2FrZV9sICZidF93YWtlX2wgJmJ0X2Vu
YWJsZV9oPjsKPiAgICAgICAgICAgICAgICAgIHZiYXQtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsK
PiAgICAgICAgICAgICAgICAgIHZkZGlvLXN1cHBseSA9IDwmdmNjYTF2OF9wbXU+Owo+ICAgICAg
ICAgIH07Cj4KPiAgICAgICAgICBidCB7Cj4gICAgICAgICAgICAgICAgICBidF9lbmFibGVfaDog
YnQtZW5hYmxlLWggewo+ICAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0g
PDAgUktfUEMxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICAgICAgICAgICAgICAg
ICAgfTsKPgo+ICAgICAgICAgICAgICAgICAgYnRfaG9zdF93YWtlX2w6IGJ0LWhvc3Qtd2FrZS1s
IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCMyBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKPiAgICAgICAgICAgICAgICAgIH07Cj4KPiAg
ICAgICAgICAgICAgICAgIGJ0X3dha2VfbDogYnQtd2FrZS1sIHsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKPiAgICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICAgfTsKPgo+IEkgdGhpbmsg
cGluIGNvbmZpZ3MgYXJlIHdyb25nLiBzYW1lIGFzIHByZXZpb3VzIHJlcG9ydCwgSSBkb24ndCBo
YXZlCj4gc2NoZW1ldGljcywgdGh1cyBub3QgYWJsZSB0byB3cml0ZSBhIHBhdGNoLgoKSWYgdGhl
c2UgYXJlIHRoZSBzY2hlbWF0aWNzLCB0cnkgdGhlc2UgR1BJT3M6CgpodHRwczovL2RyaXZlLmdv
b2dsZS5jb20vZHJpdmUvZm9sZGVycy8xdVZTREx4ZFZvT0xpemR2RUFpZy0wOENIMzVlMVVFeFQK
R1BJTzJfQjdfZMKgIEJUX1JFR19PTl9IX0dQSU8yX0I3CkdQSU8yX0MwX2TCoCBCVF9XQUtFX0hP
U1RfSF9HUElPMl9DMApHUElPMl9DMV9kwqAgSE9TVF9XQUtFX0JUX0hfR1BJTzJfQzEKCgpidF9l
bmFibGVfaDogYnQtZW5hYmxlLWggewogwqDCoMKgwqDCoMKgwqAgcm9ja2NoaXAscGlucyA9IDwy
IFJLX1BCNyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKfTsKCmJ0X2hvc3Rfd2FrZV9s
OiBidC1ob3N0LXdha2UtbCB7CiDCoMKgwqDCoMKgwqDCoCByb2NrY2hpcCxwaW5zID0gPDIgUktf
UEMxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+Owp9OwoKYnRfd2FrZV9sOiBidC13YWtl
LWwgewogwqDCoMKgwqDCoMKgwqAgcm9ja2NoaXAscGlucyA9IDwyIFJLX1BDMCBSS19GVU5DX0dQ
SU8gJnBjZmdfcHVsbF9ub25lPjsKfTsKCj4KPiBtZWFud2hpbGUsIEkgd2FudCB0byBhc2sgYSBx
dWVzdGlvbiBhYm91dCBlbmFibGUgc2FtZSBibHVldG9vdGggY2hpcCBvbgo+IGFub3RoZXIgUksz
NTY2IGJvYXJkIGZvciBtYWlubGluZSBrZXJuZWwuCj4KPiBpbiBpdHMgdmVuZG9yIE9TLCBkdGIg
ZHVtcCBzaG93czoKPiAgICAgICAgICB3aXJlbGVzcy1ibHVldG9vdGggewo+ICAgICAgICAgICAg
ICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0XDBydHNfZ3BpbyI7Cj4gICAgICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8MHgxM2M+Owo+ICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMg
PSAiZXh0X2Nsb2NrIjsKPiAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwweDEzOCAweDAxPjsK
PiAgICAgICAgICAgICAgICAgIEJULHdha2VfZ3BpbyA9IDwweDEzYSAweDExIDB4MDA+Owo+ICAg
ICAgICAgICAgICAgICAgQlQscmVzZXRfZ3BpbyA9IDwweDEzYSAweDBmIDB4MDA+Owo+ICAgICAg
ICAgICAgICAgICAgdWFydF9ydHNfZ3Bpb3MgPSA8MHgxM2EgMHgwZCAweDAxPjsKPiAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAiYmx1ZXRvb3RoLXBsYXRkYXRhIjsKPiAgICAgICAgICAg
ICAgICAgIEJULHdha2VfaG9zdF9pcnEgPSA8MHgxM2EgMHgxMCAweDAwPjsKPiAgICAgICAgICAg
ICAgICAgIHBpbmN0cmwtMSA9IDwweDEzZD47Cj4gICAgICAgICAgICAgICAgICBzdGF0dXMgPSAi
b2theSI7Cj4gICAgICAgICAgICAgICAgICBwaGFuZGxlID0gPDB4MWU3PjsKPiAgICAgICAgICB9
Owo+Cj4gcGhhbmRsZSAweDEzYSBpcyBncGlvMi4gcGhhbmRsZSAweDEzOCBpcyByazgwOSBwbWlj
Lgo+IHBpbmN0cmwtMCwgcGluY3RybC0xIGFuZCB1YXJ0X3J0c19ncGlvIGFyZSBkZWNyaXB0aW9u
IGZvciBncGlvMiBSS19QQjUsIHdoaWNoIHNob3VsZCBiZSB1YXJ0MSBydHNuIHBpbi4KPgo+IHRo
dXMgSSB3cml0ZSBteSBkdHMgZm9yIGJsdWV0b290aDoKPgo+ICZ1YXJ0MSB7Cj4gCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gCXBpbmN0cmwtMCA9IDwmdWFydDFtMF94ZmVyICZ1YXJ0MW0w
X2N0c24gJnVhcnQxbTBfcnRzbj47Cj4gCXN0YXR1cyA9ICJva2F5IjsKPiAJdWFydC1oYXMtcnRz
Y3RzOwo+Cj4gCWJsdWV0b290aCB7Cj4gCQljb21wYXRpYmxlID0gImJyY20sYmNtNDM0MzgtYnQi
Owo+IAkJY2xvY2tzID0gPCZyazgwOSAxPjsKPiAJCWNsb2NrLW5hbWVzID0gImxwbyI7Cj4gCQlk
ZXZpY2Utd2FrZXVwLWdwaW9zID0gPCZncGlvMiBSS19QQzEgR1BJT19BQ1RJVkVfSElHSD47Cj4g
CQlob3N0LXdha2V1cC1ncGlvcyA9IDwmZ3BpbzIgUktfUEMwIEdQSU9fQUNUSVZFX0hJR0g+Owo+
IAkJc2h1dGRvd24tZ3Bpb3MgPSA8JmdwaW8yIFJLX1BCNyBHUElPX0FDVElWRV9ISUdIPjsKPiAJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gCQlwaW5jdHJsLTAgPSA8JmJ0X2hvc3Rfd2Fr
ZV9sICZidF93YWtlX2wgJmJ0X2VuYWJsZV9oPjsKPiAJCXZiYXQtc3VwcGx5ID0gPCZ2Y2MzdjNf
c3lzPjsKPiAJCXZkZGlvLXN1cHBseSA9IDwmdmNjYTF2OF9wbXU+Owo+IAl9Owo+IH07Cj4KPiBi
dXQga2VybmVsIGxvZzoKPiBbICAgMTQuNDMzOTQ5XSBCbHVldG9vdGg6IGhjaTA6IGNvbW1hbmQg
MHhmYzE4IHR4IHRpbWVvdXQKPiBbICAgMjIuNDk4MDE3XSBCbHVldG9vdGg6IGhjaTA6IEJDTTog
ZmFpbGVkIHRvIHdyaXRlIHVwZGF0ZSBiYXVkcmF0ZSAoLTExMCkKPiBbICAgMjIuNDk4NjkwXSBC
bHVldG9vdGg6IGhjaTA6IEZhaWxlZCB0byBzZXQgYmF1ZHJhdGUKPiBbICAgMjQuNTE0MDA5XSBC
bHVldG9vdGg6IGhjaTA6IGNvbW1hbmQgMHgwYzAzIHR4IHRpbWVvdXQKPiBbICAgMzIuNzM3OTk5
XSBCbHVldG9vdGg6IGhjaTA6IEJDTTogUmVzZXQgZmFpbGVkICgtMTEwKQo+Cj4gSSBkb24ndCB3
aGVyZSBJJ20gd3JvbmcsIGRvbid0IGtub3cgaG93IHRvIGRvIG5leHQgc3RlcC4KPiB0aHVzIGFz
ayBjb21tdWludGUsIGNvdWxkIHlvdSBnaXZlIG1lIHNvbWUgYWR2aWNlcywgbGV0IG1lIGtub3cg
aG93IHRvCj4gZGVidWcgb3IgZml4IGl0Lgo+Cj4gQlIuCj4gTmluZy4KPgo+IGZ1bGwgZHRiIGR1
bXAgZnJvbSB2ZW5kb3Igb3M6Cj4gaHR0cHM6Ly9mb3J1bS5hcm1iaWFuLmNvbS9hcHBsaWNhdGlv
bnMvY29yZS9pbnRlcmZhY2UvZmlsZS9hdHRhY2htZW50LnBocD9pZD0xMTMyNiZrZXk9YTE0MGYw
MDhkYTQyYjhkODBiNzUwZjA5MzA2YzNkNzMKPiBmdWxsIGR0cyBmb3IgbWFpbmxpbmU6Cj4gaHR0
cHM6Ly9naXRodWIuY29tL3poYW5nbjE5ODUvbGludXgtc3RhYmxlL3RyZWUvamlhbnBpYW4vYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtamlhbnBpYW4uZHRzCj4KPiBCUi4KPiBO
aW5nLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
