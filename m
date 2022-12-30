Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78083C10F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Dec 2022 11:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ANSg0IyMXBvoLBkfyl+6xRXDSfRza6CyCS999Rx/Wrc=; b=PJkPwFtlpKzItV
	JEhJ/JaAotQvYGsvAYxbGHSQf/DSkQFcajdMj+nzUh9jD0I+oLd3cKKXlQaAFAe2oVrKLzChX130j
	+m7+idMpIOIVQHWmGdJ+1P5QIW0XaEXgCHtgBVqs0Tyw71Mlwbo8ydp9n+drdRXGGXJfc0XM0kK/D
	kDre8bJuv1IC3r/5XDlSgXgvm+UAkSYkoWmdiHccuWGKkPqgfm8rDXTUsF5w8v5rva/7ocrbnCmFS
	A8yMfD1uGpfXjBBRganpO3cJ0qtgqJToaxFNZOe3ujljZIRy/hq6eVK7uhz11hCFuDQyc2iuJJmiZ
	FZ/lJ9eMLLCVqJ7VLR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDh2-008bS6-2t; Fri, 30 Dec 2022 11:36:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDcc-008YvJ-B9
	for linux-rockchip@lists.infradead.org; Fri, 30 Dec 2022 11:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672399940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+/oAGKz8UHTa57iRKW4s5lGYuywGUey4a7vrsAc6ygU=;
	b=EcvyVIlMhm4wLGraSAChKMIfXVQV5dwqobw0jvr/89MghzLMlN8w3G+iIMbGDC6FajFJfr
	jH/BE7Iud/jg0ezO892XqOR6uWE9DyYjDu05RMO1Q2btSCqUfihnq3I4W3Oe2A/+lkxk4S
	a1B9Y0hdrHZsIW1ylRcSOoAkAfDM8r0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-351-fTkzYFaoOkOzqdnXaFftEA-1; Fri, 30 Dec 2022 06:32:18 -0500
X-MC-Unique: fTkzYFaoOkOzqdnXaFftEA-1
Received: by mail-wm1-f72.google.com with SMTP id l9-20020a7bc349000000b003d35aa4ed8eso5355373wmj.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Dec 2022 03:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/oAGKz8UHTa57iRKW4s5lGYuywGUey4a7vrsAc6ygU=;
        b=ajWgJNAo3AkfT/JN1DOjkhptEFAMcVAld2b7tuqIRLkSDGbLEukjCGFZfAsOE2dw2B
         SeZyHPWoFCAOeDmgrwTwxUe/PMbK+mGJFSvU7A6xY/7Phx5E4wgOyIhOIZTYsUrZOyVT
         suEqbx+AYNd2jgvkw/p43iSjNJ1cPgcq3p8Z2EQFvEI91V+ETMmS2eZfKYCrwG25l8u7
         zqRK84iZcX/V3ELcQhwqNL5FE4qpPWvW/8DKPKPMGwas47RryOG6YekynERzvr3d/BcS
         npXln5zoHMZUNEhZ7LygHEd2CL11eFmYINee39mCXpvGI9uOHkhfu8+hIb7DLhnabIAg
         LJIA==
X-Gm-Message-State: AFqh2kozncA8e7w9H2lasCqQmGDTP+0vxbnOT0B0qWdsqdrX4HZxvjkM
	QLxJWtbkGzP+BtTbhhE279404UZchIWSiW7Ka9WBh90qOIqMc3NHDQdJ0DqDrARAWcnkdpgHDCU
	bZ+dzDPWMnfNsZxIhjisv+gVK/4MEgGaA
X-Received: by 2002:a05:600c:1da3:b0:3d3:4dbc:75ef with SMTP id p35-20020a05600c1da300b003d34dbc75efmr22353796wms.17.1672399937605;
        Fri, 30 Dec 2022 03:32:17 -0800 (PST)
X-Google-Smtp-Source: AMrXdXujD8ZzgS7Pb826oREyFiC1KNraLQbuNX7XL2S+SNLv8iwIINUvUgMCaq86xR2bPIYl4qfNTA==
X-Received: by 2002:a05:600c:1da3:b0:3d3:4dbc:75ef with SMTP id p35-20020a05600c1da300b003d34dbc75efmr22353756wms.17.1672399937268;
        Fri, 30 Dec 2022 03:32:17 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id y22-20020a1c4b16000000b003d01b84e9b2sm27638432wma.27.2022.12.30.03.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 03:32:16 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Sam Ravnborg <sam@ravnborg.org>,
	Robert Mader <robert.mader@posteo.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Peter Robinson <pbrobinson@gmail.com>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	dri-devel@lists.freedesktop.org,
	Ondrej Jirman <megi@xff.cz>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Neal Gompa <ngompa13@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/4] Add PinePhone Pro display support
Date: Fri, 30 Dec 2022 12:31:50 +0100
Message-Id: <20221230113155.3430142-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_033222_705206_76D9D046 
X-CRM114-Status: GOOD (  19.82  )
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

VGhpcyBzZXJpZXMgYWRkIHN1cHBvcnQgZm9yIHRoZSBkaXNwbGF5IHByZXNlbnQgaW4gdGhlIFBp
bmVQaG9uZSBQcm8uCgpQYXRjaCAjMSBhZGRzIGEgZHJpdmVyIGZvciBwYW5lbHMgdXNpbmcgdGhl
IEhpbWF4IEhYODM5NCBwYW5lbCBjb250cm9sbGVyLApzdWNoIGFzIHRoZSBIU0QwNjBCSFc0IDcy
MHgxNDQwIFRGVCBMQ0QgcGFuZWwgcHJlc2VudCBpbiB0aGUgUGluZVBob25lIFByby4KClBhdGNo
ICMyIGFkZHMgYSBkZXZpY2V0cmVlIGJpbmRpbmcgc2NoZW1hIGZvciB0aGlzIGRyaXZlciBhbmQg
cGF0Y2ggIzMgYWRkcwphbiBlbnRyeSBmb3IgdGhlIGRyaXZlciBpbiB0aGUgTUFJTlRBSU5FUlMg
ZmlsZS4KCkZpbmFsbHkgcGF0Y2ggIzQgYWRkcyB0aGUgbmVlZGVkIGRldmljZXRyZWUgbm9kZXMg
aW4gdGhlIFBpbmVQaG9uZSBQcm8gRFRTLAp0byBlbmFibGUgYm90aCB0aGUgZGlzcGxheSBhbmQg
dGhlIHRvdWNoc2NyZWVuLiBUaGlzIG1ha2VzIHRoZSB1cHN0cmVhbSBEVFMKbXVjaCBtb3JlIHVz
YWJsZSBhbmQgd2lsbCBhbGxvdyBmb3IgZXhhbXBsZSB0byBlbmFibGUgc3VwcG9ydCBmb3IgdGhl
IHBob25lCmluIHRoZSBGZWRvcmEgZGlzdHJpYnV0aW9uLgoKSSBvbmx5IGFkZGVkIG15c2VsZiBh
cyB0aGUgbWFpbnRhaW5lciBmb3IgdGhlIGRyaXZlciBiZWNhdXNlIEkgZG9uJ3Qga25vdwppZiBL
YW1pbCBhbmQgT25kcmVqIHRoYXQgd29ya2VkIGluIHRoZSBkcml2ZXIgd291bGQgYmUgaW50ZXJl
c3RlZC4gUGxlYXNlCmxldCBtZSBrbm93IGZvbGtzIGlmIHlvdSBhcmUsIGFuZCBJIGNhbiBhZGQg
eW91IHRvbyBpbiB0aGUgbmV4dCByZXZpc2lvbi4KClRoaXMgaXMgYSB2NCBvZiB0aGUgcGF0Y2gt
c2V0IHRoYXQgYWRkcmVzc2VzIGlzc3VlcyBwb2ludGVkIG91dCBpbiB2MzoKCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDIyLURlY2VtYmVyLzM4NDU2
MC5odG1sCgpUaGUgcGF0Y2hlcyB3ZXJlIHRlc3RlZCBvbiBhIFBpbmVQaG9uZSBQcm8gRXhwbG9y
ZXIgRWRpdGlvbiB1c2luZyBhIEZlZG9yYQozNyBXb3Jrc3RhdGlvbiBpbWFnZS4KCkJlc3QgcmVn
YXJkcywKSmF2aWVyCgpDaGFuZ2VzIGluIHY0OgotIEFkZCBmYWxsYmFjayAiaGltYXgsaHg4Mzk0
IiBjb21wYXRpYmxlIGZvciB0aGUgcGFuZWwgY29udHJvbGxlciAoSmFnYW4gVGVraSkuCi0gQWRk
IFRvbSBGaXR6aGVucnkncyBUZXN0ZWQtYnkgdGFnLgotIEFkZCBTYW0gUmF2bmJvcmcncyBBY2tl
ZC1ieSB0YWcuCi0gQWRkIFRvbSBGaXR6aGVucnkncyBUZXN0ZWQtYnkgdGFnLgotIEtlZXAgdGhl
IERUUyBub2RlcyBzb3J0ZWQgYWxwaGFiZXRpY2FsbHkgKFRvbSBGaXR6aGVucnkpLgoKQ2hhbmdl
cyBpbiB2MzoKLSBGaXggZXhhbXBsZSBzbmlwcGV0IGZvciBgbWFrZSBkdF9iaW5kaW5nX2NoZWNr
YCB0byBwYXNzIChLcnp5c3p0b2YgS296bG93c2tpKS4KLSBBZGQgU2FtIFJhdm5ib3JnJ3MgcmV2
aXdlZC1ieSB0YWcuCi0gTW92ZSBkcml2ZXIgcGF0Y2ggYWZ0ZXIgb25lIGludHJvZHVjaW5nIHRo
ZSBEVCBiaW5kaW5nIChTYW0gUmF2bmJvcmcpLgoKQ2hhbmdlcyBpbiB2MjoKLSBEcm9wIHJlZHVu
ZGFudCAiYmluZGluZ3MiIGluIHN1YmplY3QgKEtyenlzenRvZiBLb3psb3dza2kpLgotIERyb3Ag
ImRldmljZSB0cmVlIGJpbmRpbmdzIiBpbiB0aXRsZSAoS3J6eXN6dG9mIEtvemxvd3NraSkuCi0g
UHV0IHBvcnQgbmV4dCB0byBvdGhlciAidHJ1ZSIgcHJvcGVydGllcyAoS3J6eXN6dG9mIEtvemxv
d3NraSkuCi0gQWRkIEtyenlzenRvZiBLb3psb3dza2kncyBSZXZpZXdlZC1ieSB0YWcuCi0gQWRk
IHllYXIgdG8gZHJpdmVyJ3MgY29weXJpZ2h0IG5vdGljZSAoU2FtIFJhdm5ib3JnKQotIFJlbW92
ZSB1bnVzZWQgPHZpZGVvL2Rpc3BsYXlfdGltaW5nLmg+IGhlYWRlciBpbmNsdWRlIChTYW0gUmF2
bmJvcmcpLgotIFVzZSBtaXBpX2RzaV9kY3Nfd3JpdGVfc2VxKCkgaGVscGVyIGFuZCBkcm9wIGN1
c3RvbSBtYWNybyAoU2FtIFJhdm5ib3JnKS4KLSBEcm9wIHVubmVjZXNzYXJ5IGluZm8gbWVzc2Fn
ZXMgYW5kIG1vdmUgdXNlZnVsIG9uZSB0byBkZWJ1ZyAoU2FtIFJhdm5ib3JnKS4KLSBGaXggcmVn
dWxhdG9yIG5vZGUgbmFtZXMgKE1heWEgTWF0dXN6Y3p5aykuCi0gRHJvcCBub24tZXhpc3RlbnQg
InBvd2Vyb2ZmLWluLXN1c3BlbmQiIHByb3BlcnR5IChNYXlhIE1hdHVzemN6eWspLgotIFJlbW92
ZSB1bm5lY2Vzc2FyeSBjb21tZW50cyBpbiBwYW5lbCBub2RlIChNYXlhIE1hdHVzemN6eWspLgoK
SmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzICgyKToKICBkdC1iaW5kaW5nczogZGlzcGxheTogQWRk
IEhpbWF4IEhYODM5NCBwYW5lbCBjb250cm9sbGVyCiAgTUFJTlRBSU5FUlM6IEFkZCBlbnRyeSBm
b3IgSGltYXggSFg4Mzk0IHBhbmVsIGNvbnRyb2xsZXIgZHJpdmVyCgpLYW1pbCBUcnpjacWEc2tp
ICgxKToKICBkcm06IHBhbmVsOiBBZGQgSGltYXggSFg4Mzk0IHBhbmVsIGNvbnRyb2xsZXIgZHJp
dmVyCgpPbmRyZWogSmlybWFuICgxKToKICBhcm02NDogZHRzOiByazMzOTktcGluZXBob25lLXBy
bzogQWRkIGludGVybmFsIGRpc3BsYXkgc3VwcG9ydAoKIC4uLi9iaW5kaW5ncy9kaXNwbGF5L3Bh
bmVsL2hpbWF4LGh4ODM5NC55YW1sICB8ICA3NSArKysKIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyArCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lcGhvbmUtcHJvLmR0cyAgICAgfCAxMjMgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9L
Y29uZmlnICAgICAgICAgICAgICAgICB8ICAxMiArCiBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVs
LWhpbWF4LWh4ODM5NC5jICAgIHwgNDQ2ICsrKysrKysrKysrKysrKysrKwogNiBmaWxlcyBjaGFu
Z2VkLCA2NjQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3BhbmVsL2hpbWF4LGh4ODM5NC55YW1sCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWhpbWF4LWh4ODM5NC5j
CgotLSAKMi4zOC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
