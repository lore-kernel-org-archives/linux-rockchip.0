Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E02C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djNuBwVsvl+LHTIO4z6QVmjQBoeh3vLRicUJdTI6Vf4=; b=zHMus/xQA6bNcv
	HcdTTGtAJVn6aftKId6Uka59N37c/0UfOczyQH5s50q4QswvUlwH1bchTV8pA7kHMsrREzcB1iWrf
	kFu5RvBnOqFCxsEUQR05JToCveuKL6VyFG8JfxbOhnZzTjJzjkZDsGQBAgNKhcDjJx6MOe7n50gkX
	EuJ26OMsTDBjh0tkLf8B2Wi69mdZg7M0OCeQz/CQxw/gdVlvNTgHIoJJWSFC7jr9OafaCFFomhb3I
	Qj893Zee0WF2iqEzIf59fMVLdDilDCapJITncfzo8mb/fLR1Ulb6VXU79Q1loGrQr4UnphdO7kdQ2
	ljTMH/GMWU7LtCPScd8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacgS-008gxw-TU; Sat, 02 Apr 2022 12:16:48 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacgP-008gvV-C2
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 12:16:46 +0000
Received: by mail-ed1-x52d.google.com with SMTP id b24so5809373edu.10
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 05:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=tMn5SFNOvtFJo+djtkMlHoY3ZjZs+JPd7szVA4qbR0Y=;
 b=Pbq/ZW7pvqgrAMKrviMVZe4Bu5I043VMiSjnc93BbRDEuBloRuz2YHKay8cyFWYQtj
 b9M8VQVyDNln+LyPr94C2m3TQUmwDCqQuXlpq5NtK3jdS1c3gyNaBSa1tm7bxNZPSz/5
 jfNmGubEgRGt9TMc4/G29QDOcrViPofTHKy4md8UAjiK5iKPZT2PVJvbDi/zmLD7xlb6
 /5wWpfTb9HXEuWLTBuo+eFkOnTLyNOBRTvZ4TgSyEIWx5y6Px41ypotky6iNGQ07/OA2
 mfOKXHEiNnqyjmZPkhAJkQqqyOR6nRfMmlxeR9PqGw1Ch+nKr/5YIbXQ6kryFPQnTdOv
 yNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=tMn5SFNOvtFJo+djtkMlHoY3ZjZs+JPd7szVA4qbR0Y=;
 b=w19L2Tk6rrX6/PYPcIpj224Feoe8PeomVXBd6UNkVDWqjkyfueszzdsP7qBVScBDyU
 qRJ6jYsSgW1LGNTYvXq80dN0oPH8b/KuI6+8ZrTQn6KetA3sp32lj9vJ/iTDkcxG8vYa
 wY+te8UObE8Jso9rJAMhve7jcMdSLTaY1zNhw9ciiKMcEn7rH0l9Abp7EPlvWxQxevt+
 WMU6rpRiZHikbxz0zCR6Vv10Vyc3JIopD46jI4TqLM6t8EhRTGZRqQEeEFicumSawMB5
 6d+gtLTaEzr+W0WhqEaZHcSFdIyxNzDCkxMbgMf4gAkwYfBf5eLP5ODdwE3j0Qp+84HB
 BuLg==
X-Gm-Message-State: AOAM530iOTvBKwQv8M49Zy7/Q9vBSD7Tjnm+6QtbmX3LwFw9gDF4BTkS
 rnCO4oDOCTP8GRajVWVGWuGWSg==
X-Google-Smtp-Source: ABdhPJwvD68kVUcX+t7XPlpFYBOHkSMjj+wzKh++wVN9zNZNdR9qKez+wcEnMzzi99GmzWo/oy8K2A==
X-Received: by 2002:a50:ee05:0:b0:419:39d9:ccd8 with SMTP id
 g5-20020a50ee05000000b0041939d9ccd8mr25171430eds.369.1648901800793; 
 Sat, 02 Apr 2022 05:16:40 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 by4-20020a0564021b0400b00418fc410299sm2335191edb.62.2022.04.02.05.16.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 05:16:40 -0700 (PDT)
Message-ID: <5e1b6c09-0a8f-f1d9-728b-90ffbaedae83@linaro.org>
Date: Sat, 2 Apr 2022 14:16:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert
 rockchip,rk3188-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, zhangqing@rock-chips.com,
 Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <20220331225134.7A0A9C340ED@smtp.kernel.org> <3107512.vfdyTQepKt@diego>
 <c212c994-fc5d-6ad0-3cd6-88dc2c719e38@linaro.org>
 <7c786619-6fcf-21dd-8e5a-0ec67da2a63d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7c786619-6fcf-21dd-8e5a-0ec67da2a63d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_051645_457292_8B5A7726 
X-CRM114-Status: GOOD (  16.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMDIvMDQvMjAyMiAxMzo0NSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IAo+IAo+IE9uIDQvMi8y
MiAxMzo0MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMDEvMDQvMjAyMiAwOTo1
NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBIaSBTdGVwaGVuLAo+Pj4KPj4+IEFtIEZyZWl0
YWcsIDEuIEFwcmlsIDIwMjIsIDAwOjUxOjMyIENFU1Qgc2NocmllYiBTdGVwaGVuIEJveWQ6Cj4+
Pj4gUXVvdGluZyBKb2hhbiBKb25rZXIgKDIwMjItMDMtMjkgMDQ6MTM6MjIpCj4+Pj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAs
cmszMTg4LWNydS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L3JvY2tjaGlwLHJrMzE4OC1jcnUueWFtbAo+Pj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+
PiBpbmRleCAwMDAwMDAwMDAuLmRkZDdlNDZhZgo+Pj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazMx
ODgtY3J1LnlhbWwKPj4+Pj4gQEAgLTAsMCArMSw3OCBAQAo+Pj4+PiArIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAo+Pj4+PiArJVlBTUwgMS4yCj4+Pj4+ICstLS0KPj4+Pj4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvY2xvY2svcm9ja2NoaXAscmszMTg4LWNy
dS55YW1sIwo+Pj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjCj4+Pj4+ICsKPj4+Pj4gK3RpdGxlOiBSb2NrY2hpcCBSSzMxODgvUkszMDY2
IENsb2NrIGFuZCBSZXNldCBVbml0IChDUlUpCj4+Pj4+ICsKPj4+Pj4gK21haW50YWluZXJzOgo+
Pj4+PiArICAtIEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+PiAr
ICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Pj4+ICsKPj4+Pj4gK2Rlc2Ny
aXB0aW9uOiB8Cj4+Pj4+ICsgIFRoZSBSSzMxODgvUkszMDY2IGNsb2NrIGNvbnRyb2xsZXIgZ2Vu
ZXJhdGVzIGFuZCBzdXBwbGllcyBjbG9ja3MgdG8gdmFyaW91cwo+Pj4+PiArICBjb250cm9sbGVy
cyB3aXRoaW4gdGhlIFNvQyBhbmQgYWxzbyBpbXBsZW1lbnRzIGEgcmVzZXQgY29udHJvbGxlciBm
b3IgU29DCj4+Pj4+ICsgIHBlcmlwaGVyYWxzLgo+Pj4+PiArICBFYWNoIGNsb2NrIGlzIGFzc2ln
bmVkIGFuIGlkZW50aWZpZXIgYW5kIGNsaWVudCBub2RlcyBjYW4gdXNlIHRoaXMgaWRlbnRpZmll
cgo+Pj4+PiArICB0byBzcGVjaWZ5IHRoZSBjbG9jayB3aGljaCB0aGV5IGNvbnN1bWUuIEFsbCBh
dmFpbGFibGUgY2xvY2tzIGFyZSBkZWZpbmVkIGFzCj4+Pj4+ICsgIHByZXByb2Nlc3NvciBtYWNy
b3MgaW4gdGhlIGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzE4OC1jcnUuaCBhbmQKPj4+Pj4gKyAgZHQt
YmluZGluZ3MvY2xvY2svcmszMDY2LWNydS5oIGhlYWRlcnMgYW5kIGNhbiBiZSB1c2VkIGluIGRl
dmljZSB0cmVlIHNvdXJjZXMuCj4+Pj4+ICsgIFNpbWlsYXIgbWFjcm9zIGV4aXN0IGZvciB0aGUg
cmVzZXQgc291cmNlcyBpbiB0aGVzZSBmaWxlcy4KPj4+Pj4gKyAgVGhlcmUgYXJlIHNldmVyYWwg
Y2xvY2tzIHRoYXQgYXJlIGdlbmVyYXRlZCBvdXRzaWRlIHRoZSBTb0MuIEl0IGlzIGV4cGVjdGVk
Cj4+Pj4+ICsgIHRoYXQgdGhleSBhcmUgZGVmaW5lZCB1c2luZyBzdGFuZGFyZCBjbG9jayBiaW5k
aW5ncyB3aXRoIGZvbGxvd2luZwo+Pj4+PiArICBjbG9jay1vdXRwdXQtbmFtZXM6Cj4+Pj4+ICsg
ICAgLSAieGluMjRtIiAgICAtIGNyeXN0YWwgaW5wdXQgICAgICAgICAgICAgICAgIC0gcmVxdWly
ZWQKPj4+Pj4gKyAgICAtICJ4aW4zMmsiICAgIC0gUlRDIGNsb2NrICAgICAgICAgICAgICAgICAg
ICAgLSBvcHRpb25hbAo+Pj4+PiArICAgIC0gInhpbjI3bSIgICAgLSAyN21oeiBjcnlzdGFsIGlu
cHV0IG9uIFJLMzA2NiAtIG9wdGlvbmFsCj4+Pj4+ICsgICAgLSAiZXh0X2hzYWRjIiAtIGV4dGVy
bmFsIEhTQURDIGNsb2NrICAgICAgICAgIC0gb3B0aW9uYWwKPj4+Pj4gKyAgICAtICJleHRfY2lm
MCIgIC0gZXh0ZXJuYWwgY2FtZXJhIGNsb2NrICAgICAgICAgLSBvcHRpb25hbAo+Pj4+PiArICAg
IC0gImV4dF9ybWlpIiAgLSBleHRlcm5hbCBSTUlJIGNsb2NrICAgICAgICAgICAtIG9wdGlvbmFs
Cj4+Pj4+ICsgICAgLSAiZXh0X2p0YWciICAtIGV4dGVybmFsIEpUQUcgY2xvY2sgICAgICAgICAg
IC0gb3B0aW9uYWwKPj4+Pgo+Pj4+IEknZCBleHBlY3QgYWxsIHRoZXNlIGNsa3MgaGVyZSB0byBi
ZSBpbnB1dHMgdG8gdGhpcyBub2RlLgo+Pj4KPj4+IFRoZSBvcHRpb25hbCBjbG9ja3MgYXJlIGFs
bCBwYXJ0IG9mIGEgY2lyY3VsYXIgZGVwZW5kZW5jeS4KPj4+Cj4+PiBTbyBmb3IgZXhhbXBsZSB4
aW4zMmsgbm9ybWFsbHkgaXMgZ2VuZXJhdGVkIGJ5IHRoZSBwbWljIGFuZCBmZWQKPj4+IGJhY2sg
aW50byB0aGUgc3lzdGVtLCBzbyB0byBnZXQgeGluMzJrLCB3ZSBuZWVkIHRoZSBwbWljIHRvIHBy
b2JlLAo+Pj4gd2hpY2ggbmVlZHMgaTJjLCB3aGljaCBpbiB0dXJuIGFscmVhZHkgbmVlZHMgdGhl
IGNsb2NrIGNvbnRyb2xsZXIuCj4+Cj4+IEFyZSB5b3Ugc3VyZSB0aGF0IHhpbjMyayAoUlRDKSBj
bG9jayBzaG91bGQgYmUgaW5wdXQgdG8gdGhlIGNsb2NrCj4+IGNvbnRyb2xsZXI/IEkgd291bGQg
ZXhwZWN0IGl0IGlzIHRoZSBpbnB1dCB0byB0aGUgU29DIFJUQyBibG9jaywgc28KPj4gdGhlcmUg
aXMgbm8gY2lyY3VsYXIgZGVwZW5kZW5jeS4KPiAKPiBjbGstcmszMTg4LmM6Cj4gCj4gUE5BTUUo
bXV4X3BsbF9wKQkJPSB7ICJ4aW4yNG0iLCAieGluMzJrIiB9OwoKVGhhbmtzLCBidXQgdGhhdCdz
IG5vdCB0aGUgYW5zd2VyIHdoZXRoZXIgaXQgaXMgYW4gaW5wdXQgdG8gdGhlIGNsb2NrCmNvbnRy
b2xsZXIuIEl0J3MgdGhlIGFuc3dlciBob3cgdGhlIGRyaXZlciBpbXBsZW1lbnRzIHRoaXMuIDop
CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
