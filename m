Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA23C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 20:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkYX1X+2poVlLrklV0McfydItKwJ1/+FVReJIC+ia7w=; b=BSui0Bto3T+Ik2
	4HiBjr2Ls3xA9QQ7mhy3iImnURTL9aGqCZfm92V5Tg05t5WPGOaHtNGfedOn773OsbQPVwUMXwnKr
	Ezld+/7Lt8t3qrcjnLyesP4gtxZCnvrR4dRDz2TP4gxzrhJbZWLh7MYGloVrt1p6leu282bdE9/0t
	KIN0eB1QEa0TtPdrNovQA0VsHd1zdXTFXOd25gH6a23CcsCufw3HdP5G5KEO7QeSsUVtoPVnJFHFH
	dSVniehIIrm2cEIj8bBBGptMUw747f/e2zoUnzsnXbOF2l0LosFrL318zVLRAkA7EwsQvvG/sKle+
	sEOdgb2mOEVvkKLkA7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MfE-001pK4-Ce; Mon, 19 Dec 2022 20:23:08 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Mf3-001p8U-8w
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 20:22:59 +0000
Received: by mail-qt1-x832.google.com with SMTP id bw27so7162381qtb.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 12:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yPJmhSw0v+DBD18ezfqwoFIbrDfIDYOSBxHcqB6pM8c=;
        b=ufVdqxl3U6xcJrbMBBFjMYH38pbQ8C6rVXD6M9PFyOz3uu0fDzG2Yu6KQZswL9JaGN
         wG7DzfGPl/r6Svs/ipSN7jvEGwxUKQ+00RD6Y3NB9PLWam3zdT9A5/DFNXf+ZUSh6phG
         R/KjqYya3cLAoNHMVJOgasgPmJJwwqPTAcKeg3ILK/9RwmHxbV+XPkvD2IeD2IAn1Qx8
         50Ao/VfcuqqTb2wAk5zUI6HcAmZlPGLhzBR84BQTjH88KnxYvqdbURxEHjUcRLKzNO4J
         QjqAAOSXmpNCyjuqRyc0gmfAZUrvUYejPgcXj5YfNYOm33BCed/ks902Ma8S+VLq2KuK
         gwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yPJmhSw0v+DBD18ezfqwoFIbrDfIDYOSBxHcqB6pM8c=;
        b=Gn68aXdHXVdoilPKUjedSokoDjuv9WBVnMfq4Voc7QaM9JA75wsKUaDEGPpm/Fpm7i
         ufn8+nuwNhgJ8Xrg+7VX0OQs8cv6qblGeTNhVXDNZDbJ6PQMcQ1Hd2FqH7mjz3S3mvIF
         2G5wfWQDcXCUboc1BuEhsDK7ptRiVfWrMLVLflmkxF82C2JMIDQCfcgH5aoSPDmQOMcH
         e5Htypa30kDPkwAP0kByspNNLwj5Jt/3o13M4zd6uT/eP5quwc0Gtdzf76Br2N2p9ABv
         BrCWxXqpwVlm4a0+sv/XLbwLjo4Z4y16+EalGvWcV4XfCipYZI9i8xnhyilXjxJmVyGw
         IKFA==
X-Gm-Message-State: ANoB5pldPLmZiI5+cza6PvgYF8VYmmIbIlitv/47iN+jXeh4WZHzOMhZ
	gGruB+FViOgMXbEKQtQb3zT5Vw==
X-Google-Smtp-Source: AA0mqf6bgQRtffH6JrJGneylIPV58q03NN7jZ14+JAv/Q5A3ejlRDvtnveprymGmtEXa1aT0ulFYrA==
X-Received: by 2002:a05:622a:1cc5:b0:3a4:bc76:969c with SMTP id bc5-20020a05622a1cc500b003a4bc76969cmr54004924qtb.55.1671481374827;
        Mon, 19 Dec 2022 12:22:54 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id w7-20020ac86b07000000b003a50d92f9b4sm6521847qts.1.2022.12.19.12.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 12:22:54 -0800 (PST)
Message-ID: <e675cfd9f11f68f95ff7bdc17c64466ab92ddfe1.camel@ndufresne.ca>
Subject: Re: [PATCH v1 0/9] AV1 stateless decoder for RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 19 Dec 2022 15:22:50 -0500
In-Reply-To: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_122257_324266_E1B445BC 
X-CRM114-Status: GOOD (  15.21  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gVGhpcyBzZXJpZXMgaW1wbGVtZW50IEFWMSBzdGF0ZWxlc3MgZGVj
b2RlciBmb3IgUkszNTg4IFNvQy4KPiBUaGUgaGFyd2FyZSBzdXBwb3J0IDggYW5kIDEwIGJpdHMg
Yml0c3RyZWFtcyB1cCB0byA3NjgweDQzMjAuCj4gQVYxIGZlYXR1cmUgbGlrZSBmaWxtIGdyYWlu
IG9yIHNjYWxpbmcgYXJlIGRvbmUgYnkgdGhlIHBvc3Rwcm9jZXNzb3IuCj4gVGhlIGRyaXZlciBj
YW4gcHJvZHVjZSBOVjEyXzRMNCBhbmQgTlYxMiBwaXhlbCBmb3JtYXRzLgo+IEEgbmF0aXZlIDEw
Yml0cyBOVjEyXzRMNCBmb3JtYXQgaXMgcG9zc2libGUgYnV0IG5lZWQgbW9yZSBpbnZlc3RpZ2F0
aW9uCj4gdG8gYmUgY29tcGxldGx5IGRvY3VtZW50ZWQgYW5kIGVuYWJsZWQuCj4gCj4gSXQgaXMg
YmFzZWQgb24gRGFuaWVsJ3MgIltSRkMsdjNdIG1lZGlhOiBBZGQgQVYxIHVBUEkiIFsxXSBwYXRj
aGVzIGFuZAo+IFNlYmFzdGlhbidzIGRldmljZS10cmVlIHBhdGNoZXMgZm9yIFJLMzU4OC4KPiAK
PiBUaGUgZnVsbCBicmFuY2ggY2FuIGJlIGZvdW5kIGhlcmU6Cj4gaHR0cHM6Ly9naXRsYWIuY29s
bGFib3JhLmNvbS9saW51eC9mb3ItdXBzdHJlYW0vLS9jb21taXRzL3JrMzU4OF9hdjFfZGVjb2Rl
cl92MQo+IAo+IEZsdXN0ZXIgc2NvcmUgaXM6IDE1MS8yMzkgd2hpbGUgdGVzdGluZyBBVjEtVEVT
VC1WRUNUT1JTIHdpdGggR1N0cmVhbWVyLUFWMS1WNEwyU0wtR3N0MS4wLgo+IFRoZSBmYWlsaW5n
IHRlc3RzIGFyZToKPiAtIDEwYml0cyBiaXRzdHJlYW0gYmVjYXVzZSAxMGJpdHMgb3V0cHV0IGZv
cm1hdHMgYXJlbid0IHlldCBpbXBsZW1lbnRlZC4KPiAtIHRoZSAyIHRlc3RzIHdpdGggMiBzcGF0
aWFsIGxheWVyczogZmV3IGVycm9ycyBpbiBsdW1hL2Nocm9tYSB2YWx1ZXMKPiAtIHRlc3RzIHdp
dGggcmVzb2x1dGlvbiA8IGhhcmR3YXJlIGxpbWl0ICg2NHg2NCkKCkl0cyBuaWNlIHRvIG5vdGUg
dGhhdCB3ZSB0ZXN0ZWQgMTBiaXQgc3VwcG9ydCBieSBmb3JjaW5nIFAwMTAgb3V0cHV0IGZyb20g
dGhlCnBvc3Rwcm9jZXNzb3IsIHdpdGggYWxsIGJpdHN0cmVhbSB3b3JraW5nIGV4Y2VwdCBmb3Ig
ZmlsbWdyYWluLiBIb3BlZnVsbHkgd2UnbGwKZ2V0IDEwYml0IHByb3Blcmx5IHNvcnRlZCBvdXQs
IGJ1dCB3ZSBkb24ndCB0aGluayB0aGUgdUFQSSBoYXZlIGFueSBpc3N1ZXMKc3BlY2lmaWNhbGx5
IGZvciAxMGJpdCAoTWVkaWF0ZWsgZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgMTBiaXQgb3IgZmls
bWdyYWluKS4KCj4gCj4gQmVuamFtaW4KPiAKPiBCZW5qYW1pbiBHYWlnbmFyZCAoOSk6Cj4gICBk
dC1iaW5kaW5nczogbWVkaWE6IHJvY2tjaGlwLXZwdTogQWRkIHJrMzU4OCB2cHUgY29tcGF0aWJs
ZQo+ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgQVYxIGRlY29kZXIgbW9kZSBhbmQgY29udHJv
bHMKPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogU2F2ZSBiaXQgZGVwdGggZm9yIEFWMSBkZWNvZGVy
Cj4gICBtZWRpYTogdmVyaXNpbGljb246IENoZWNrIEFWMSBiaXRzdHJlYW1zIGJpdCBkZXB0aAo+
ICAgbWVkaWE6IHZlcmlzaWxpY29uOiBDb21wdXRlIG1vdGlvbiB2ZWN0b3JzIHNpemUgZm9yIEFW
MSBmcmFtZXMKPiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIEFWMSBlbnRyb3B5IGhlbHBlcnMK
PiAgIG1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tjaGlwIEFWMSBkZWNvZGVyCj4gICBtZWRp
YTogdmVyaXNpbGljb246IEFkZCBmaWxtIGdyYWluIGZlYXR1cmUgdG8gQVYxIGRyaXZlcgo+ICAg
bWVkaWE6IHZlcmlzaWxpY29uOiBFbmFibGUgQVYxIGRlY29kZXIgb24gcmszNTg4Cj4gCj4gIC4u
Li9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbCAgICAgICAgICB8ICAgIDEgKwo+ICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL01ha2VmaWxlICAgfCAgICAzICsKPiAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCAgIHwgICAgNSArCj4g
IC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgICB8ICAgNTQgKwo+
ICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmggICAgfCAgMTAyICsK
PiAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jICAgIHwgICAgMyAr
Cj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jICB8ICAgIDUg
Kwo+ICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYxX2VudHJvcHltb2RlLmMgICAgfCA0NTM2
ICsrKysrKysrKysrKysrKysrCj4gIC4uLi92ZXJpc2lsaWNvbi9yb2NrY2hpcF9hdjFfZW50cm9w
eW1vZGUuaCAgICB8ICAyNzIgKwo+ICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYxX2ZpbG1n
cmFpbi5jICAgICAgfCAgNDAxICsrCj4gIC4uLi92ZXJpc2lsaWNvbi9yb2NrY2hpcF9hdjFfZmls
bWdyYWluLmggICAgICB8ICAgMzYgKwo+ICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgx
X2h3X2F2MV9kZWMuYyAgfCAyMjgwICsrKysrKysrKwo+ICAuLi4vdmVyaXNpbGljb24vcm9ja2No
aXBfdnB1OTgxX3JlZ3MuaCAgICAgICAgfCAgNDc3ICsrCj4gIC4uLi9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHVfaHcuYyAgICB8ICAxMTYgKwo+ICAxNCBmaWxlcyBjaGFuZ2VkLCA4
MjkxIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYxX2VudHJvcHltb2RlLmMKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYx
X2VudHJvcHltb2RlLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vcm9ja2NoaXBfYXYxX2ZpbG1ncmFpbi5jCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX2F2MV9maWxt
Z3JhaW4uaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdz
LmgKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
