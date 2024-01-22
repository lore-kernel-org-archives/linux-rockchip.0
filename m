Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E963EC47DD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 16:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Co/gg37XtCnQYWi4JVKOiWhywLpl30K8It7qQJ/ySHY=; b=gNEfkRAPcHM0Ls
	5QwfarVKxtXty+CrK8MaDdtMy/Z6gv0fD7YDj51Lf2OBVUsn8t2k4R9sV6WQT+68PSsDgs5D129DE
	U9oTpxjmmffsTYjz9cdnWXRIj3/Gwow0TPygZVr/WcofPvpR2WC44YaND11htMV8ULGvwET5aKQ5y
	FE/bLxFVU9truT5yZzFi+56YJ6A3VTuh5dxSKTFTkfA0TbuAk2CthvmTMwjaIVEAZlKmPTtXfMnAx
	+8qiZXkE8cQPQcermUhrycnPDGfr+FQSU1mMR051rSta9uvlw5xX3HDzwWu//HRV/zJMX3WcZynls
	0mNnxlch333ytD2k7bRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwnX-00Crv2-1l;
	Mon, 22 Jan 2024 16:05:19 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwnT-00CrtL-0i;
	Mon, 22 Jan 2024 16:05:16 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-55a5e7fa471so2863306a12.1;
        Mon, 22 Jan 2024 08:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705939513; x=1706544313; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yQjQH4/WV8sQIhyhOr97cTMNYmXle66TfHJ5ijXAWdA=;
        b=Fku27OYQrJ//QQXsPH0Ew7KtKrOp6ETCxSgq19PGt2A1zIjqOr5TiErM1d4ZUH2wsD
         AW9ixW8+x4Vl0cu6KAHjh5tzqNMR5e99BE9f7AAUuSrT0gzPS/o1Gj8TjhDhUcryuAlS
         MflDwBNqB8DE2GRr5YBFjFNgsFOWa8oa0bVtX1rvtdjVKN4qKYYBLIRpcy8UJUM6cSvc
         hGiNiF+D0IlHiLiruWbEN3r0gA4mNB7Ww1bv5e0GAVqJ/vX8yDEzjpLk5KKMBEAQF9sE
         ZLuwt8RcCJmFzB/b+6avb9vsNLwyxlDSRi2c90EaG9ZzXB1a4MOFjCri2SujzBstrM4t
         Uh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705939513; x=1706544313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yQjQH4/WV8sQIhyhOr97cTMNYmXle66TfHJ5ijXAWdA=;
        b=CKAtai0RUucDTe9hz11vsovW8VtWTbtxsQcKFXfpd4T2VLFAW1h0BZkpfX7oYf5Op8
         8P3lZNesTvsiWHiImbNNOZ0MKU+HsPMt+xkNETgQ7SSf7nlDj1Ljw1OZKl1CG/BXw4mQ
         qVTnWYmaa+2m9s1knYekWGtzpn15ym0lRyCpvYrr/fGn8RMteDPjCN6m7txTOf9Jiuvm
         i0yArzvmVsw3J7IbkMzIQowx1hKxdiX0DjDgoN8SkGJENagrE5qPonYMPi+nhxJJtRHe
         nRBCxaUr5YcOv3C6Zu9ulROZimV6w1Fw9BYLvjxcEhbqexxhuN6aVpd2pDp6kkX74yfc
         aELA==
X-Gm-Message-State: AOJu0Yw7KdH8VsE3LTtNWtpcuYc542hkDaGgRzsp/87WyJxY2vi3D7+g
	/qaM8UE1a7fssFS8COCH0xNvCkRW1fdnNDHHLCnWygRlQDFRiXLF
X-Google-Smtp-Source: AGHT+IHsV94gHylTJt8p4ecOB0g0rXZygY1e1O1hhabq2Hj0hvcy0zZhf2MBWODbK466vSt2n3HWrQ==
X-Received: by 2002:a05:6402:164f:b0:55a:d2c9:53 with SMTP id s15-20020a056402164f00b0055ad2c90053mr92875edx.4.1705939512522;
        Mon, 22 Jan 2024 08:05:12 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ck4-20020a0564021c0400b0055c2b21be1dsm1682345edb.35.2024.01.22.08.05.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 08:05:12 -0800 (PST)
Message-ID: <3617742e-9468-4b58-bdb9-94c880eccb42@gmail.com>
Date: Mon, 22 Jan 2024 17:05:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: set num-cs property for spi on px30
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240119101656.965744-1-heiko@sntech.de>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20240119101656.965744-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_080515_258659_705FE9C6 
X-CRM114-Status: GOOD (  18.11  )
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

SGksCgpPbiAxLzE5LzI0IDExOjE2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBGcm9tOiBIZWlr
byBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+Cj4gVGhlIHB4MzAgaGFzIHR3
byBzcGkgY29udHJvbGxlcnMgd2l0aCB0d28gY2hpcC1zZWxlY3RzIGVhY2guCj4gVGhlIG51bS1j
cyBwcm9wZXJ0eSBpcyBzcGVjaWZpZWQgYXMgdGhlIHRvdGFsIG51bWJlciBvZiBjaGlwCj4gc2Vs
ZWN0cyBhIGNvbnRyb2xsZXJzIGhhcyBhbmQgaXMgdXNlZCBzaW5jZSAyMDIwIHRvIGZpbmQgdXNl
cwo+IG9mIGNoaXBzZWxlY3RzIG91dHNpZGUgdGhhdCByYW5nZSBpbiB0aGUgUm9ja2NoaXAgc3Bp
IGRyaXZlci4KCj4gV2l0aG91dCB0aGUgcHJvcGVydHkgc2V0LCB0aGUgZGVmYXVsdCBpcyAxLCBz
byBzcGkgZGV2aWNlcwo+IHVzaW5nIHRoZSBzZWNvbmQgY2hpcHNlbGVjdCB3aWxsIG5vdCBiZSBj
cmVhdGVkLgoKCm51bS1jcyBpcyBkZWZpbmVkIGFzIDMyIGJpdDoKCsKgIG51bS1jczoKwqDCoMKg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgrCoMKgwqAgZGVz
Y3JpcHRpb246CgrCoMKgwqDCoMKgIFRvdGFsIG51bWJlciBvZiBjaGlwIHNlbGVjdHMuCgo9PT0K
Cm51bS1jcyBpcyBwYXJzZWQgYXMgMTYgYml0IGluIHNwaS1yb2NrY2hpcC5jOgoKI2RlZmluZSBS
T0NLQ0hJUF9TUElfTUFYX0NTX05VTSA8aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
bGF0ZXN0L0MvaWRlbnQvUk9DS0NISVBfU1BJX01BWF9DU19OVU0+CTQrIGN0bHItPm1heF9uYXRp
dmVfY3MgPSBST0NLQ0hJUF9TUElfTUFYX0NTX05VTTsgKyAvKiArICogcmsgc3BpMCBoYXMgdHdv
IG5hdGl2ZSBjcywgc3BpMS4uNSBvbmUgY3Mgb25seSArICogaWYgbnVtLWNzIGlzIG1pc3Npbmcg
aW4gdGhlIGR0cywgZGVmYXVsdCB0byAxICsgKi8gKyBpZiAob2ZfcHJvcGVydHlfcmVhZF91MTYo
bnAsICJudW0tY3MiLCAmY3Rsci0+bnVtX2NoaXBzZWxlY3QpKSB1MzIgKyBjdGxyLT5udW1fY2hp
cHNlbGVjdCA9IDE7ICsgY3Rsci0+dXNlX2dwaW9fZGVzY3JpcHRvcnMgPSB0cnVlOyA9PT0gbnVt
LWNzOiBtaW5pbXVtOiAxIG1heGltdW06IDQKZGVmYXVsdDogMQpCb3RoIHRoZSBkcml2ZXIgYXMg
dGhlIGJpbmRpbmcgbmVlZCBhIGxpdHRsZSB1cGRhdGUuIEpvaGFuCgo+Cj4gRml4ZXM6IGViMTI2
MmUzY2M4YiAoInNwaTogc3BpLXJvY2tjaGlwOiB1c2UgbnVtLWNzIHByb3BlcnR5IGFuZCBjdGxy
LT5lbmFibGVfZ3Bpb2RzIikKPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa28u
c3R1ZWJuZXJAY2hlcnJ5LmRlPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3B4MzAuZHRzaSB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kKPiBpbmRleCA0MmNlNzhiZWI0MTMu
LjIwOTU1NTU2YjYyNCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3B4MzAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNp
Cj4gQEAgLTYzMiw2ICs2MzIsNyBAQCBzcGkwOiBzcGlAZmYxZDAwMDAgewo+ICAJCWNsb2NrLW5h
bWVzID0gInNwaWNsayIsICJhcGJfcGNsayI7Cj4gIAkJZG1hcyA9IDwmZG1hYyAxMj4sIDwmZG1h
YyAxMz47Cj4gIAkJZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPiArCQludW0tY3MgPSA8Mj47Cj4g
IAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlwaW5jdHJsLTAgPSA8JnNwaTBfY2xr
ICZzcGkwX2NzbiAmc3BpMF9taXNvICZzcGkwX21vc2k+Owo+ICAJCSNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+IEBAIC02NDcsNiArNjQ4LDcgQEAgc3BpMTogc3BpQGZmMWQ4MDAwIHsKPiAgCQljbG9j
ay1uYW1lcyA9ICJzcGljbGsiLCAiYXBiX3BjbGsiOwo+ICAJCWRtYXMgPSA8JmRtYWMgMTQ+LCA8
JmRtYWMgMTU+Owo+ICAJCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4gKwkJbnVtLWNzID0gPDI+
Owo+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAkJcGluY3RybC0wID0gPCZzcGkx
X2NsayAmc3BpMV9jc24wICZzcGkxX2NzbjEgJnNwaTFfbWlzbyAmc3BpMV9tb3NpPjsKPiAgCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
