Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60944C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 15:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AJPBOj6OGBLBUtjRkFiTaZYCBIxNA/IW+RmZGjsB5A=; b=cnVnbYox5kVoJb
	rSqwkvvGz601XDNYiWMuEsF4hPWW+WTcrbS1e1qDATz8/cr9E8DHAooVA8Z3Mw0tQEaW+qBtUa9Eh
	shphcugEPoWz7uVzektN3t5aUhESJjrgCBRjmCINQMIvSRAlgZYKFa3lael+QD8IVck/bXIQOlhAI
	k1lh83dECvMtrNIsaodF3/jcz4CxTlSPdD1rGrPf4ggXsu843mr/XgGaFsveIGXpMrQk/PNmRmjWJ
	eyMIGu6YMQcn0Oo/R+GUBeGiK+KJtQAUJH15DJ3Q0ZYv9QaWdVwofBmQTcTXPyOKaxW1aixioX9Ls
	pcvN3nQvggUqmgJIuohQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhar-006GDq-0e;
	Fri, 22 Dec 2023 15:37:45 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhan-006GDA-2G;
	Fri, 22 Dec 2023 15:37:43 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-33687627ad0so1606363f8f.2;
        Fri, 22 Dec 2023 07:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703259459; x=1703864259; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jO+Yn/pm/7QZ79FVkxxMV1L8t+Nw+iioD1El4NSSjm8=;
        b=K/3vyslPVBzX3D4jzetrMl58Ua5NhWN5gt8gzdI12oCDtp/jlY40ziL5S/YoQspsZI
         OgIm1pW41fhT5c18we9P8Zbr4omjVYkYgAJlyLRAs+M1kcjY3AG6G+UPpbODdwGELjmm
         hFZ2IUFwITYBWI/Mxf2jqasBDQZgCF4nlMlcDLSTeewe9Bgi4B1W42mvnyGTtiXYtTlD
         8e89HMnrrKSICND7ReqKKmQTz5+XKjd4XCr4u/ayZYouDDjrbsCYpRNlZxIxsMFs/a70
         pl4jlvkdoP19oyG7qpbMPTh69hInhgbD7gp8772bwyt5N74Y//1IqdwH6at8yO/sRELs
         m8Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703259459; x=1703864259;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jO+Yn/pm/7QZ79FVkxxMV1L8t+Nw+iioD1El4NSSjm8=;
        b=iKY9TGZ9n3NVE4ErBsfrLGuKlEwCtukpkDdPLuY1h0RXiy3qzh1VY2//CmRjtEb7E/
         CnHABD+5d1Dr6pk2OOXVovd9II/HRfQ/Sk3Goq1mvrs8GaTF5yh35sn2gDaCq7oBT6jm
         NfBIRyYEqMIgfsjjI/Hh0OuYpbk4VTi9kWicoY1t0STu3rydqhp1ZUmbQgKEu5LtHgh0
         j4+ZxKNuRIdvVUfyxdz+0dkPupklUH27CFHPvYFNfcTXYecyAvvpvH+3DGx90I6z7vRr
         pUSqfgSxssU9UXcjfIrVxtjya8dM+U1kX0Q2pBT3VuZdGW5egsfXw8RNCR6kU/DoiFA7
         Y4jA==
X-Gm-Message-State: AOJu0YxBMJMwSXSdVeEDnDCdeYdvJY4M1paL+bp177Opd2SPaAykPy3V
	ENd7Cne2gmC+CUrhsziGpg==
X-Google-Smtp-Source: AGHT+IF/S1bUccm049yDqtraSZeXSvw0RtqJJi5b7sN4cROAVAAsyvDsoozy5bwdK3uoqUyPC7Ff7g==
X-Received: by 2002:a5d:5487:0:b0:336:60e9:483 with SMTP id h7-20020a5d5487000000b0033660e90483mr910801wrv.125.1703259458799;
        Fri, 22 Dec 2023 07:37:38 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:f3ae:2788:7e03:f44? ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id a7-20020a5d4d47000000b00333404e9935sm4595304wru.54.2023.12.22.07.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Dec 2023 07:37:38 -0800 (PST)
Message-ID: <18c16355-9140-45be-bd16-96fad8b184a4@gmail.com>
Date: Fri, 22 Dec 2023 16:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
Content-Language: en-US, de-DE
To: Andy Yan <andy.yan@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 zhengxing@rock-chips.com
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-2-andyshrk@163.com>
 <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
 <28216be5-810f-40d6-850b-a0fc590ffa3c@rock-chips.com>
 <a82481ca-b578-49a4-b0d0-974b6ee65c98@gmail.com>
 <74e497f5-0361-47f7-a410-4b20d3526d52@rock-chips.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <74e497f5-0361-47f7-a410-4b20d3526d52@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_073741_764499_3D7EAEE3 
X-CRM114-Status: GOOD (  26.15  )
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

SGkgQW5keSwKCkFtIDIyLjEyLjIzIHVtIDExOjM3IHNjaHJpZWIgQW5keSBZYW46Cj4gSGkgQWxl
eCwKPgo+IE9uIDEyLzIxLzIzIDIzOjU4LCBBbGV4IEJlZSB3cm90ZToKPj4gSGkgQW5keSwKPj4K
Pj4gQW0gMjEuMTIuMjMgdW0gMDI6MDcgc2NocmllYiBBbmR5IFlhbjoKPj4+IEhpIEFsZXg6Cj4+
Pgo+Pj4gT24gMTIvMjAvMjMgMTk6MTYsIEFsZXggQmVlIHdyb3RlOgo+Pj4+IEhpIEFuZHksCj4+
Pj4gQW0gMTguMTIuMjMgdW0gMTE6NTUgc2NocmllYiBBbmR5IFlhbjoKPj4+Pj4gRnJvbTogQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pj4+Pgo+Pj4+PiBUaGUgc3lzdGVtIHdp
bGwgaGFuZyBhdCBicmluZ3VwIHNlY29uZGFyeSBDUFVzCj4+Pj4+IHdpdGhvdXQgcHNjaSBub2Rl
Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlw
cy5jb20+Cj4+Pj4+Cj4+Pj4+IC0tLQo+Pj4+Pgo+Pj4+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkK
Pj4+Pj4KPj4+Pj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kgfCA1
ICsrKysrCj4+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4+Pj4KPj4+
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpIAo+
Pj4+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4+Pj4+IGluZGV4
IDc4Njg2ZmM3MmNlNi4uNTM0NDgwMzQ0MmExIDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+Pj4+PiBAQCAtNjcsNiArNjcsMTEgQEAgZGlzcGxheS1z
dWJzeXN0ZW0gewo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydHMgPSA8JnZvcF9vdXQ+Owo+
Pj4+PiDCoMKgwqDCoMKgIH07Cj4+Pj4+ICvCoMKgwqAgcHNjaSB7Cj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoCBjb21wYXRpYmxlID0gImFybSxwc2NpLTEuMCI7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBt
ZXRob2QgPSAic21jIjsKPj4+Pj4gK8KgwqDCoCB9Owo+Pj4+PiArCj4+Pj4gSSBkb24ndCB0aGlu
ayB0aGF0J3MgYW4gZ29vZCBpZGVhLiAKPj4+Cj4+PiBXaHk/Cj4+IEl0J3Mgb25seSB3aGF0IEkn
dmUgYmVlbiB0b2xkIGJlZm9yZTogV2Ugc2hvdWRuJ3QgYWRkIHByb3BlcnRpZXMgd2hpY2gKPj4g
ZGVwZW5kIG9uIG5vbi11cHN0cmVhbSBzb2Z0d2FyZSAoaWYgYW4gdXBzdHJlYW0gYWx0ZXJuYXRp
dmUgZXhpc3RzKS4gCj4+IEFsc28KPgo+PiBJJ20gbm90IHN1cmUgd2hhdCBoYXBwZW5zIGlmIHNv
bWVib2R5IGRvZXNuJ3TCoHVzZSBkb3duc3RyZWFtIGJvb3Rsb2FkZXIKPj4gYW5kIFBTQ0kgY2Fu
J3QgYmUgZm91bmQ6IFdvdWxkIHRoZSBib2FyZCBzdGlsbCBiZSBhYmxlIHRvIGJvb3Q/Cj4KPiBU
aGUgcHNjaSBpcyByZWxlYXNlZCBoZXJlbFswXS4KPiBBbmQgYWxzbywgdGhlcmUgYXJlIG9ubHkg
dHdvIHJrMzAzNiBiYXNlZCBib2FyZHMgaW4gbWFpbmxpbmU6Cj4gcmszMDM2LWV2YixyazMwMzYt
a2V5bGluLCBib3RoIG9mIHRoZW0gZnJvbSByb2NrY2hpcC4KPiBBbmQgdGhlIG1haW5saW5lIHN1
cHBvcnQgb2YgdGhlc2UgYm9hcmRzIGJyb2tlbiBmcm9tIGxpbnV4IDUuNygyMDIwLCAKPiBzZWUg
UEFUQ0ggMyksCj4gbm8gb25lIHJlcG9ydCB0aGlzIGJyb2tlbiB1bnRpbCBJIHRyeSB0byBydW4g
dGhpcyBib2FyZCBub3cuCj4gU28gbWF5YmUgdGhlcmUgaXMgbm8gc3VjaCBzb21lYm9keSB3aWxs
IHJ1biBpbnRvIHRoaXMgc2l0dWF0aW9uLgo+Cj4KPiBbMF1odHRwczovL2dpdGh1Yi5jb20vcm9j
a2NoaXAtbGludXgvcmtiaW4vdHJlZS9tYXN0ZXIvYmluL3JrMzAKPgpZZWFoIHN1cmUsIHRoZXJl
IGFyZSBiaW5hcnkgcmVsZWFzZSBmb3IgZG93bnN0cmVhbSBvcHRlZSBpbXBsZW1lbnRhdGlvbnMs
CmJ1dCB0aGUgd29uJ3Qgd29yayB3aXRoIHVwc3RyZWFtIHUtYm9vdCwgc2luY2UgdGhleSBhcmUg
dXNpbmcgYSBjYWxsaW5nCmNvbnZlbnRpb24gZGlmZmVyZW50IGZyb20gdXBzdHJlYW0gb3B0ZWUg
b3MuIEkgdHJpZWQgdG8gYWRkIHN1cHBvcnQgZm9yCnRob3NlLCBidXQgaXQgd2FzIHJlamVjdGVk
IFswXS4KClVwc3RyZWFtIGJvb3RmbG93IGRvZXNuJ3QgaW1wbGVtZW50L25lZWQgUFNDSSBhcyBp
dCB1c2VzIGEgU01QIGJyaW5ndXAKbWV0aG9kIHdoaWNoIGlzIGRvbmUgaW4ga2VybmVsIG9ubHkg
KHNlZSBlbmFibGUtbWV0aG9kIGluIGNwdSBzZWN0aW9uKS4gSQpndWVzcyB0aGF0IGl0IGRvZXNu
J3Qgd29yayBmb3IgeW91IGlzIG1vc3QgbGlrZWx5IGJlY2F1c2UgdGhlIGRvd25zdHJlYW0KdGVl
IG9zIG1ha2VzIHRoZSBjcHUgcmVnaXN0ZXJzIHRoZSB1cHN0cmVhbSBlbmFibGUtbWV0aG9kIHVz
ZXMgb25seQphY2Nlc3NpYmxlIGluIGEgaGlnaGVyIGV4Y2VwdGlvbiBsZXZlbC4KCkkgY2FuIHVu
ZHVzdCBteSBSSzMwMzYgZXZiIGJvYXJkIGR1cmluZyBjaHJpc3RtYXMgaG9saWRheXMgYW5kIGNo
ZWNrIHdoYXRzCmJyb2tlbiBmb3IgUkszMDM2IGluIHUtYm9vdC4gRXZlcnl0aGluZyB3YXMgd29y
a2luZyBmaW5lIChpbmNsdWRpbmcgU01QCmJyaW5ndXAgdy9vIFBTQ0kgYW5kIHVwc3RyZWFtIHUt
Ym9vdCkgd2hlbiBJIHdhcyBhZGRpbmcgVlBVIHN1cHBvcnQgaW4gNS4xNApbMV0uIEkgbGlrZWx5
IGJvb3RlZCBmcm9tIFRGLWNhcmQgcmF0aGVyIHRoYW4gZU1NQy4KClswXSAKaHR0cHM6Ly9wYXRj
aHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L3Vib290L3BhdGNoLzIwMjMwNzE4MTQ1NzE1LjEyODAy
MDEtNi1rbmFlcnpjaGVAZ21haWwuY29tLwpbMV0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDIxMDUyNzE1NDQ1NS4zNTg4NjktMTEt
a25hZXJ6Y2hlQGdtYWlsLmNvbS8KCk5pY2UgaG9saWRheXMhCgpBbGV4Cgo+Pj4KPj4+PiBZb3Ug
bW9zdCBsaWtlbHkgbmVlZCB0aGF0IGJlY2F1c2UgeW91IGhhdmUgZG93bnN0cmVhbSBib290bG9h
ZGVyIAo+Pj4+IGluc3RhbGxlZCBvbiB0aGlzIGJvYXJkLiBQU0NJIGltcGxlbWVudGF0aW9uIHRh
a2VzIHBsYWNlIGluIFRFRS1PUyAKPj4+PiBmb3IgUm9ja2NoaXBzIEFSTSBTb0NzLiBUaGVyZSBp
cyBubyBzdXBwb3J0IGZvciBSSzMwMzYgaW4gdXBzdHJlYW0gCj4+Pj4gb3AtdGVlIE9TLiBJdCdz
IHByZXR0eSBtdWNoIHRoZSBzYW1lIGZvciBSSzMxMjggYW5kIFJLMzI4OC4KPj4+PiBJZiB5b3Ug
dXNlIHVwc3RyZWFtIHUtYm9vdCBpdCBzaG91bGQgYmUgZ29vZCBhcy1pcy4KPj4+Cj4+PiBVbmZv
cnR1bmF0ZWx5LCB1cHN0cmVhbSB1LWJvb3QgYWxzbyBjYW5ub3QgYm9vdCB1cCBvbiB0aGlzIGJv
YXJkLgo+Pj4gQXQgcHJlc2VudCwgSSBoYXZlbid0IGhhZCB0aW1lIHRvIGRlYnVnIHdoYXQgaXMg
Z29pbmcgb24uCj4+Pgo+Pj4gQW5vdGhlciByZWFzb24gSSB3YW50IHRvIHVzZSBkb3duc3RyZWFt
IHUtYm9vdCBpdCBpczogSSB0cnkgcnVuCj4+PiB0aGlzIGJvYXJkIHdpdGggbWFpbmxpbmUganVz
dCBiZWNhdXNlIGkgd2FudCB0byB0ZXN0IHNvbWUgY29tbXVuaXR5Cj4+PiBwYXRjaGVzIGFib3V0
IGlubm8taGRtaSBkcml2ZXIsIGFzIHlvdSBzYWlkICJ0aGUgaW5uby1oZG1pIGRyaXZlciAKPj4+
IGN1cnJlbnRseSBnZXRzIGEgbG90IG9mIGF0dGVudGlvbiJbMF0KPj4+Cj4+IFRoYW5rcyBmb3Ig
aGVscGluZyB0ZXN0aW5nIHRoaXMuCj4+Cj4+IEFsZXgKPj4KPj4+IFdpdGggYSBkb3duc3RyZWFt
IHUtYm9vdCBJIGNhbiBlYXN5IHN3aXRjaCBiZXR3ZWVuIHVwc3RyZWFtIGtlcm5lbCAKPj4+IGFu
ZCBkb3duc3RyZWFtIGtlcm5lbChubyBuZWVkIHRvIHJlcGxhY2Ugb3RoZXIgY29tcG9uZW50cykK
Pj4+IGlmIEkgZm91bmQgc29tZSBmdW5jdGlvbiBpcyBub3Qgd29yayBhcyBleHBlY3RlZC4KPj4+
Cj4+Pgo+Pj4gWzBdaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJv
Y2tjaGlwL2NvdmVyLzIwMjMxMjE5MTcwMTAwLjE4ODgwMC0xLWtuYWVyemNoZUBnbWFpbC5jb20v
IAo+Pj4KPj4+Pgo+Pj4+IEFsZXgKPj4+Pj4gwqDCoMKgwqDCoCB0aW1lciB7Cj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFybSxhcm12Ny10aW1lciI7Cj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBhcm0sY3B1LXJlZ2lzdGVycy1ub3QtZnctY29uZmlndXJlZDsKPj4+Pgo+
Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
