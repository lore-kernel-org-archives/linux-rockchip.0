Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1DE3C5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArjLXPwKGbClMbqBhzjJXRabPINRLbCznajq4n4dcoQ=; b=HrKsotVmOQpOgZ
	l5Hq1VTKtlyUnW9G6Bxi9yvALkBWqxwQ74qYYj/kop0/ZqDJXAc/jYOaF41cgejqc5jxVNfQtkSRG
	vyTcEoMrpP5ckndulhGoihaZ3VCArQseSHjCSVG6qwCN2YqTNbvuFloBzDxtbECSNHNjWRiXsgm+Y
	+Lg3dEaulF4vo4ASNJ+YtuFMh+wRGTSdYvnRkWQZMRMdDY5ygKuwp53zhXG2JPmeSzxq+K4ohxW3z
	AQw+m5t4rF+MBHYJ++9RTavz8NMEjtJXJgkkRbQAJuJ9ujQtUGmcjSJe8EcCrmGN/beIqz6R2MLxq
	oWQ4f86By0DvTAs2wu5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisfp-0000000AcOj-29VR;
	Tue, 27 Aug 2024 09:39:37 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisfm-0000000AcNF-2NBp
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 09:39:36 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-42803adb420so6677045e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Aug 2024 02:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724751573; x=1725356373; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9NA1hPLphJFkg55aBOeaWrnCS8TwQLe/FT77xsFVr/g=;
        b=eGf8CQtC8p7D/AyrRUIPnkR+AykK87Ik8hxqFQVV0WZs9GwiOzWbgVAotdRByZNhxr
         AzNnSXeEI3xwioNMlJ30TkQCdV/9+pBHQisEHzSeZEYiDzqjcQe0AFodfMMgr8mv/o2K
         bruIuMXk6CeqdjL44LOHlbVSUAfNQLgS0JKLL3tuwIfKu3gEyftxdTEjKbmpj113OmZi
         KCJC9acp4bQ4hmUw5WxbpHXkE1TkkmHQ9MT1tg163vGjTRa/uOi2P3Y/2MR2o2IL/wUF
         903Xj0hgoieLs7GNlfLWG+MB0FlEdeTVuS1tfc0R7LuzdRi10a0e49AWH80oK/C6mwBZ
         ceoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724751573; x=1725356373;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9NA1hPLphJFkg55aBOeaWrnCS8TwQLe/FT77xsFVr/g=;
        b=soZIqzsg5b4xd+wQJYP+ILRwHe6P2PwVfJPd5h4MOLxPYOpR22ikUBHNReJ9piqxZL
         MLUagrcdPudE3QCZjvsseQY5rVicTLvgcMyRsmdhcOR6zbPbLcfMNZzE5FOkqerT0X3M
         5nsHn3QuBRdKhQiavOpN2gOaGybJGSmainPU+6FB+7acPOak4kGQZh1O1CXbm9mpRSjt
         fyz7CvMKmL7RcOO5DqxVqk3hMUOinzQczOyUHGxZcrPqUY+QgFQQJCuLk6eACfNKGovQ
         Hh9g3o/Cu2XO8v4snQJ7Ff6ETtf1G3VviWJOzLw3bOJqnsyHatx8RTjXBIYTxmEP7EyF
         GYbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUOqaQhunUAGQsLld3wyucFMbqk4yA/ADojY3rJLAO43tcVVpvQucygLPuF4n2vqExDHgbMg9/6ZMqhPEp+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzX2ue1C60g0bMD4clWkKVIWWBHKvZnw9GhLgZPFtFSBgWkSZOd
	fryFgyARZyiK8Cp7kpdzj1ZMf7hdtZWqoit/ciPZbb7zlO0EX1e8yF/5QaWBbnc=
X-Google-Smtp-Source: AGHT+IEucEoPnsJ4jJ6ZUZu1I9QHe7Vec7KyXnEjRKdsR+FfHN00nz2DTyVEWDOUtU6KNSpcb2mu9A==
X-Received: by 2002:a05:600c:3ca3:b0:426:6358:7c5d with SMTP id 5b1f17b1804b1-42acca0c1c8mr54322945e9.4.1724751572652;
        Tue, 27 Aug 2024 02:39:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ac514e269sm182322605e9.2.2024.08.27.02.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 02:39:32 -0700 (PDT)
Message-ID: <58f5d332-2f2a-4607-9662-e71fd23b1316@linaro.org>
Date: Tue, 27 Aug 2024 11:39:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped
 device node handling to simplify error paths
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
 <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
 <a48f1a0b-0e20-4782-bf6b-c430da9ae391@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <a48f1a0b-0e20-4782-bf6b-c430da9ae391@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_023934_655830_B8B1FBD4 
X-CRM114-Status: GOOD (  23.35  )
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

T24gMjcvMDgvMjAyNCAxMTozMywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyNy8w
OC8yMDI0IDA5OjQ4LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+IEhpIEtyenlzenRvZiwK
Pj4KPj4gT24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgMjo1MeKAr1BNIEtyenlzenRvZiBLb3psb3dz
a2kKPj4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4+PiBPYnRhaW4g
dGhlIGRldmljZSBub2RlIHJlZmVyZW5jZSB3aXRoIHNjb3BlZC9jbGVhbnVwLmggdG8gcmVkdWNl
IGVycm9yCj4+PiBoYW5kbGluZyBhbmQgbWFrZSB0aGUgY29kZSBhIGJpdCBzaW1wbGVyLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4KPj4KPj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+Pgo+Pj4gLS0tIGEv
ZHJpdmVycy9wbWRvbWFpbi9yZW5lc2FzL3JjYXItZ2VuNC1zeXNjLmMKPj4+ICsrKyBiL2RyaXZl
cnMvcG1kb21haW4vcmVuZXNhcy9yY2FyLWdlbjQtc3lzYy5jCj4+PiBAQCAtMzAzLDEyICszMDQs
MTIgQEAgc3RhdGljIGludCBfX2luaXQgcmNhcl9nZW40X3N5c2NfcGRfaW5pdCh2b2lkKQo+Pj4g
ICAgICAgICBjb25zdCBzdHJ1Y3QgcmNhcl9nZW40X3N5c2NfaW5mbyAqaW5mbzsKPj4+ICAgICAg
ICAgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4+PiAgICAgICAgIHN0cnVjdCBy
Y2FyX2dlbjRfcG1fZG9tYWlucyAqZG9tYWluczsKPj4+IC0gICAgICAgc3RydWN0IGRldmljZV9u
b2RlICpucDsKPj4+ICAgICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+Pj4gICAgICAgICB1bnNp
Z25lZCBpbnQgaTsKPj4+ICAgICAgICAgaW50IGVycm9yOwo+Pj4KPj4+IC0gICAgICAgbnAgPSBv
Zl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNo
ZXMsICZtYXRjaCk7Cj4+PiArICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgX19mcmVlKGRl
dmljZV9ub2RlKSA9Cj4+PiArICAgICAgICAgICAgICAgb2ZfZmluZF9tYXRjaGluZ19ub2RlX2Fu
ZF9tYXRjaChOVUxMLCByY2FyX2dlbjRfc3lzY19tYXRjaGVzLCAmbWF0Y2gpOwo+Pgo+PiBUaGlz
IGJyZWFrcyB0aGUgZGVjbGFyYXRpb25zL2JsYW5rLWxpbmUvY29kZSBzdHJ1Y3R1cmUsIHNvIHBs
ZWFzZSBtb3ZlCj4+IHRoaXMgdXAuCj4gCj4gV2hhdCBkbyB5b3UgbWVhbiAiZGVjbGFyYXRpb24g
c3RydWN0dXJlIj8gVGhhdCdzIHRoZSB3YXkgaG93IHZhcmlhYmxlcwo+IHdpdGggY29uc3RydWN0
b3JzIGFyZSBleHBlY3RlZCB0byBiZSBkZWNsYXJlZCAtIHdpdGhpbiB0aGUgY29kZS4KCkNvbnRp
bnVpbmcgdGhvdWdodHMsIHNvIHlvdSBwcmVmZXI6CgoJc3RydWN0IHJjYXJfZ2VuNF9wbV9kb21h
aW5zICpkb21haW5zOwoJdm9pZCBfX2lvbWVtICpiYXNlOwoJc3RydWN0IGRldmljZV9ub2RlICpu
cCBfX2ZyZWUoZGV2aWNlX25vZGUpID0KCQlvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNo
KE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNoZXMsICZtYXRjaCk7CgooYXNzdW1pbmcgSSB3aWxs
IHB1dCBpdCBhdCB0aGUgZW5kIG9mIGRlY2xhcmF0aW9ucykuCgpBcmUgeW91IHN1cmUgdGhpcyBp
cyBtb3JlIHJlYWRhYmxlPyBJdCdzIHJlYWxseSBsb25nIGxpbmUgc28gaXQKb2JmdXNjYXRlcyBh
IGJpdCB0aGUgZGVjbGFyYXRpb25zLiBUaGUgcG9pbnQgb2YgdGhlIHNjb3BlZCBhc3NpZ25tZW50
IGlzIHRoYXQKeW91IGRlY2xhcmUgaXQgYXQgcG9pbnQgb2YgbmVlZC9maXJzdCB1c2UuCgo+IAo+
Pgo+PiBJZiB5b3UgaW5zaXN0IG9uIGtlZXBpbmcgYXNzaWdubWVudCB0byBhbmQgdmFsaWRhdGlv
biBvZiBucCB0b2dldGhlciwKPj4gdGhlIGxpbmUgc2hvdWxkIGJlIHNwbGl0IGluIGRlY2xhcmF0
aW9uIGFuZCBhc3NpZ25tZW50Lgo+IAo+IE5vLCB0aGF0IHdvdWxkIGJlIGluY29uc2lzdGVudCB3
aXRoIGNsZWFudXAvY29uc3RydWN0b3IgY29kaW5nIHN0eWxlLgo+IE1heWJlIHRoaXMgaXMgc29t
ZXRoaW5nIG5ldywgc28gbGV0IG1lIGJyaW5nIHByZXZpb3VzIGRpc2N1c3Npb25zOgo+IAo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUhrLT13aWNmdldQdVJWREc1UjFtWlN4RDhYZz0t
MG5MT2lIYXkyVF9VSjB5RFg0MmdAbWFpbC5nbWFpbC5jb20vCj4gCj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsL0NBSGstPXdnUkhpVjVWU3h0ZlhBNFM2YUxVbWNRWUV1QjY3dTNCSlBKUHR1
RVNzMUp5QUBtYWlsLmdtYWlsLmNvbS8KPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
Q0FIay09d2h2T0dMM2FOaHRwczBZa3NHdHp2YW9iX2J2WnBiYVRjVkVxR3dOTXhCNnhnQG1haWwu
Z21haWwuY29tLwo+IAo+IGFuZCBmaW5hbGx5IGl0IHdpbGwgcmVhY2ggZG9jdW1lbnRhdGlvbiAo
YWx0aG91Z2ggaXQgZm9jdXNlcyBvbgo+IHVud2luZGluZyBwcm9jZXNzIHRvIGJlIHNwZWNpZmlj
IC0gIldoZW4gdGhlIHVud2luZCBvcmRlciAuLi4iKToKPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMTcxMTc1NTg1NzE0LjIxOTI5NzIuMTI2NjE2NzU4NzYzMDAxNjc3NjIuc3RnaXRAZHdp
bGxpYTIteGZoLmpmLmludGVsLmNvbS8KPiAKPj4KPj4+ICAgICAgICAgaWYgKCFucCkKPj4+ICAg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPj4+Cj4+Cj4+PiBAQCAtMzY5LDE0ICszNjUs
MTIgQEAgc3RhdGljIGludCBfX2luaXQgcmNhcl9nZW40X3N5c2NfcGRfaW5pdCh2b2lkKQo+Pj4g
ICAgICAgICAgICAgICAgIGlmIChlcnJvcikgewo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
cHJfd2FybigiRmFpbGVkIHRvIGFkZCBQTSBzdWJkb21haW4gJXMgdG8gcGFyZW50ICV1XG4iLAo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhcmVhLT5uYW1lLCBhcmVhLT5wYXJl
bnQpOwo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRfcHV0Owo+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycm9yOwo+Pj4gICAgICAgICAgICAgICAgIH0KPj4+
ICAgICAgICAgfQo+Pj4KPj4+ICAgICAgICAgZXJyb3IgPSBvZl9nZW5wZF9hZGRfcHJvdmlkZXJf
b25lY2VsbChucCwgJmRvbWFpbnMtPm9uZWNlbGxfZGF0YSk7Cj4+Pgo+Pj4gLW91dF9wdXQ6Cj4+
PiAtICAgICAgIG9mX25vZGVfcHV0KG5wKTsKPj4+ICAgICAgICAgcmV0dXJuIGVycm9yOwo+Pgo+
PiByZXR1cm4gb2ZfZ2VucGRfYWRkX3Byb3ZpZGVyX29uZWNlbGwoLi4uKTsKPiAKPiBBY2suCj4g
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+IAoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
