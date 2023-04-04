Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4996BC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 13:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HHAFWSCKsWueZ3INQ6cIqlOWTtKeg6fndi/+aw45oo=; b=tpalZOeei9vBox
	F7oKVCpDi60OGaf50tyk7SOd8pDlh4l7lYlkSJ4WLJ6AvkN4l51s27fkqpxjRjMP296HT5UJBZpBj
	2I1dmZJpLCc8w0inGZleG7AW7mzrH+PVVFGb8vAcCG6boENPgMI/yEo3k1QmxjrnXwW3WtnYNMUpR
	SUsbe+V50mJt0JscRGGxcdaFsWsh1cXSYnVwu2LvYlCrHLbUpnpB8Z5IOsS9joRlHipy+6bqU0x/g
	HKuAQ9gDcVohBWxXdXppItgw8DMF5dm2cNVptR5D1uqCnApSV/H3CvlZdQ/HQhH7aOmog2ZWpMErv
	E8UnBEAgCsoNQ31xyXeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjgiu-001STz-1G;
	Tue, 04 Apr 2023 13:29:20 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjgir-001SRp-0N
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 13:29:18 +0000
Received: by mail-ed1-x52c.google.com with SMTP id b20so130644345edd.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 06:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680614952;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s483NaMM7Zoche7s3BZ3DdRWDccYZvUuzEvQy+0pu+s=;
        b=eC5yxf+/hg0s55JuY5sUtl/t6JuiaYzwPx3JDJ9CmYtFzjcZVDquKOslt3GCZ7wqS6
         +epqb6ngRhESn6/P+2lYXlS5BjsLkOV9K0ugwatpLneZJxzIn3gDuU2fIMDAGEMPm5Yr
         fxjM2z/0dRnGzLef5gRYmf5HhVphR0c0RVo/aD1ioBxNrVGXiS5wb3gd+M5WRTrckVM5
         P+8GRJtuJ3zvEVTn2X5QU6sQD/dmX3rv3OBkZyQAXY4bnu6krPRY53Hrudf9KUSaWj/1
         tMqYamUvRDryuYuSubu0r29Qu3Il9A1DljJKsdQxM6WhtNRq6AXjIU/OT9hKqdTKYN/8
         6UiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680614952;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s483NaMM7Zoche7s3BZ3DdRWDccYZvUuzEvQy+0pu+s=;
        b=mvL3HhuT0Um1LvoV/C7ImMFWMZg7lFNomjqrXAvJvwpgEhu1/YpCZVxUZOkBJ0VQJf
         glah4NOTTNY5kOH9e69F09Hxxb7FQVshiWs5DnTZCUEwQucokNzxI+W7OgxXcEy7O40/
         Rherm15ygwckRXu7uvqltsXDYnuCRp83z88dMKFtmyujnHXmU2gD37ffkN4V15nz/Phq
         1rueLaYYSuCsx0EXNUgATzYp7c8VgwxXBeo/wDlTBTu1/9oxli/XY2w9sMosW3zxxmw+
         ODBBYm0Y45CgtnxLED34BYK4wW7PkaPjY/DbbFILlc0auP/JZJXIR9v/89uOlOoiwrFe
         jFbg==
X-Gm-Message-State: AAQBX9dhgPje0ciVmjS43aY4hRGVIBG5xtmdWxue2DdxApv3TfIIGP4C
	yJC1yUg5YbR85No/kld92PGdwQ==
X-Google-Smtp-Source: AKy350YBmPHL8nFhi0Lkzwx2+5sWJyMEQ48kEVnHMQQN2hlCF5LrHqzWw6QBBitOO7aULRs2Ye+VQg==
X-Received: by 2002:a17:906:454b:b0:933:48ce:73a5 with SMTP id s11-20020a170906454b00b0093348ce73a5mr2267697ejq.56.1680614952348;
        Tue, 04 Apr 2023 06:29:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7467:56f4:40b7:cba8? ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id y7-20020a1709064b0700b00946be16f725sm5982854eju.153.2023.04.04.06.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 06:29:11 -0700 (PDT)
Message-ID: <63d456fa-4db5-96fc-107e-060e59754096@linaro.org>
Date: Tue, 4 Apr 2023 15:29:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 06/11] dt-bindings: PCI: Update the RK3399 example to a
 valid one
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, damien.lemoal@opensource.wdc.com,
 xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Brian Norris <briannorris@chromium.org>, Caleb Connolly
 <kc@postmarketos.org>, Corentin Labbe <clabbe@baylibre.com>,
 Judy Hsiao <judyhsiao@chromium.org>, Lin Huang <hl@rock-chips.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
 <20230404082426.3880812-7-rick.wertenbroek@gmail.com>
 <d9afc07f-0346-1fe7-907c-261e4c6f92cd@linaro.org>
 <CAAEEuhrnp1QyP498V1wzyLv6KvfRCpNidF9NJpzg+kofWqrJtA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAEEuhrnp1QyP498V1wzyLv6KvfRCpNidF9NJpzg+kofWqrJtA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_062917_162743_971C1593 
X-CRM114-Status: GOOD (  20.25  )
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

T24gMDQvMDQvMjAyMyAxMDo1OCwgUmljayBXZXJ0ZW5icm9layB3cm90ZToKPiBPbiBUdWUsIEFw
ciA0LCAyMDIzIGF0IDEwOjQ14oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+IDxrcnp5c3p0b2Yu
a296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pgo+PiBPbiAwNC8wNC8yMDIzIDEwOjI0LCBS
aWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+Pj4gVXBkYXRlIHRoZSBleGFtcGxlIGluIHRoZSBkb2N1
bWVudGF0aW9uIGEgdmFsaWQgZXhhbXBsZS4KPj4+IFRoZSBkZWZhdWx0IG1heC1vdXRib3VuZC1y
ZWdpb25zIGlzIDMyIGJ1dCB0aGUgZXhhbXBsZSBzaG93ZWQgMTYuCj4+Cj4+IFRoaXMgaXMgbm90
IHJlYXNvbiB0byBiZSBpbnZhbGlkLiBJdCBpcyBwZXJmZWN0bHkgZmluZSB0byBjaGFuZ2UgZGVm
YXVsdAo+PiB2YWx1ZXMgdG8gZGVzaXJlZCBvbmVzLiBXaGF0IGlzIG5vdCBhY3R1YWxseSBvYnZp
b3VzIGlzIHRvIGNoYW5nZSBzb21lCj4+IHZhbHVlIHRvIGEgZGVmYXVsdCBvbmUsIGluc3RlYWQg
b2YgcmVtb3ZpbmcgaXQuLi4KPiAKPiBIZWxsbywgdGhlIGV4YW1wbGUgdmFsdWUgPDB4MCAweDgw
MDAwMDAwIDB4MCAweDIwMDAwPjsgaXMgcGxhaW4gd3JvbmcKPiBhbmQgd2lsbCBjcmFzaCB0aGUg
a2VybmVsLiBUaGlzIGlzIGEgdmFsdWUgdGhhdCBwb2ludCB0byBhbiBhZGRyZXNzIHRoYXQgZmFs
bHMKPiBpbiB0aGUgRERSIFJBTSByZWdpb24gYnV0IGRlcGVuZGluZyBvbiB0aGUgYW1vdW50IG9m
IFJBTSBvbiB0aGUKPiBib2FyZCB0aGlzIGFkZHJlc3MgbWF5IG5vdCBldmVuIGV4aXN0IChlLmcu
LCBib2FyZCB3aXRoIDJHQiBvciBsZXNzKS4KCldlIHRhbGsgYWJvdXQgbWF4LW91dGJvdW5kLXJl
Z2lvbnMuCgo+IAo+IEFsc28gdGhpcyBhZGRyZXNzIHJlcXVpcmVzIHBvaW50aW5nIHRvIHdoZXJl
IHRoZSBQQ0llIGNvbnRyb2xsZXIgaGFzIHRoZQo+IHdpbmRvd3MgZnJvbSBBWEkgUGh5c2ljYWwg
c3BhY2UgdG8gUENJZSBzcGFjZS4gVGhpcyBhZGRyZXNzIGlzCj4gYWxsb2NhdGVkIHdoZW4gdGhl
IFNvQyBhZGRyZXNzIG1hcCBpcyBjcmVhdGVkIHNvIGl0IGNhbiBvbmx5IGJlIHRoYXQKPiBvbmUg
dW5sZXNzIHJvY2tjaGlwIHJlZmFicyB0aGUgU29DIHdpdGggYW5vdGhlciBhZGRyZXNzIG1hcC4K
PiAKPiBUaGUgZXhhbXBsZSBuZXZlciB3b3JrZWQgd2l0aCB0aGUgdmFsdWVzIGdpdmVuIGFzIHJl
cG9ydGVkIGJ5IGUuZy4sCj4gaHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvNzM1
ODY3MDMvZGV2aWNlLXRyZWUtaXNzdWVzLXdpdGgtcm9ja3BybzY0LXBjaWUtZW5kcG9pbnQKPiBh
bmQgaGVyZSB0aGV5IHNldCBpdCB0byAwIChiYXNlIG9mIHRoZSBERFIsIHdoaWNoIGlzIGEgInZh
bGlkIiBhZGRyZXNzCj4gYXMgdG8gaXQgZXhpc3RzIGV2ZW4gb24gYm9hcmRzIHdpdGggbGVzcyB0
aGFuIDJHQikgYnV0IGl0IGlzIHN0aWxsIHdyb25nCj4gdG8gZG8gc28uCgpBZ2FpbiwgbXkgY29t
bWVudCB3YXMgdW5kZXIgbWF4LW91dGJvdW5kLXJlZ2lvbnMsIG5vdCB1bmRlciBzb21lIG90aGVy
CnBpZWNlcy4gRG9lcyB0aGlzIGFsbCBhcHBseT8KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
