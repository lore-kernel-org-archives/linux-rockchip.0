Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BED1DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 17:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8df2QzWNR4asFizM64xZImohKp9JNhsV2OVuaLdhk0=; b=p6lgXsZmReV6CI
	8X3Juiy9WxSBlTYqbilMsYYCRQDoJnJ/XqwsA4gnnVHukS6mXx1j1GvdCBmSU1A3ZMV/OyLgJBLIX
	l4tofV7rkZsrrAMZHTdCVKn/qEpT4DhDVaXYgQ7wmaCqIcWw5hlJ38gjb7sDDWbzQeLEY140x9RHz
	oDEX57ZBZ1PBsSjRInc4HYt/1u7udbU/QiKoHOblzmiUnNY48jJG5F3j4O0jQn5+I/KKuJpV8hDCp
	flRpP8O1xPIJBNUu9+M4vEKU1zmLhUg7hmYebdYHSmej2CoWl4Qw2IoTvRTUqkLwGMCPqqmbBO9Sv
	eWXLOKuCnhxjZyx4/ing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC2Eu-00GXJ5-Np; Thu, 14 Jul 2022 17:03:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC2ED-00GWpy-LJ; Thu, 14 Jul 2022 17:02:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9AC4F62036;
	Thu, 14 Jul 2022 17:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B73C34114;
	Thu, 14 Jul 2022 17:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657818135;
	bh=zXANWtzbnyxmqVMxW1EvIJdJ0gn5BhRKKX+GkEwlWnI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=L4/Tnm5Uar0wMG+j4pkMu+tZKXO2y5fFx1lVBQTiNACef5pZO31sN/mHaG+RurEGO
	 DEH71e8XLmJwYpov9Eojr1TFJljDddP7j/KifNEZ1Km1hM9zU2qXFaklSkRD7TmkC1
	 RZsbNSGYXMv+Z/3mun/jmKAs1yOJdtOc2AnODmHUS5NBViWiMjECNyStNbCJYlMb/u
	 p/7Fw9HTkkDKLuWK8/fMJLwXyjbw7qQbfNL0XymhvcTg/ysevbuCnanDWu8H3o1jjP
	 ob97UuufWt46wvMH+nIhcqScnM6fP91IatFCnGvcmwkbcSygA8m5TTR0Yefoa5BC9W
	 s8fW1fdMJppFw==
Received: by mail-vs1-f54.google.com with SMTP id l190so2063507vsc.0;
        Thu, 14 Jul 2022 10:02:14 -0700 (PDT)
X-Gm-Message-State: AJIora+XHU1Dg7R6WNY0iiKwDAaW9ksYbv2dXHOtDFJYvInjUr+KPwr7
	UMIFBczlSIK2JACwm/3UdS6DNjoHsO5OcfAKeHs=
X-Google-Smtp-Source: AGRyM1vJYETbyBnDzWJi60rOSZnZM0poZwqUuIBT2wznh3l2ngixajoW9MvEPDHzdJbrzgKsaUjm/SWvQSJkelCR5uU=
X-Received: by 2002:a05:6102:3034:b0:357:7290:aa45 with SMTP id
 v20-20020a056102303400b003577290aa45mr4041571vsa.16.1657818133999; Thu, 14
 Jul 2022 10:02:13 -0700 (PDT)
MIME-Version: 1.0
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com> <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com> <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
In-Reply-To: <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 15 Jul 2022 01:02:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
Message-ID: <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
To: =?UTF-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Markus Reichl <m.reichl@fivetechno.de>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Linux MMC List <linux-mmc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_100217_816190_4AAAE71D 
X-CRM114-Status: GOOD (  25.92  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdWwgMTUsIDIwMjIgYXQgMTI6MjcgQU0gQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIK
PGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPiB3cm90ZToKPgo+IG1tYy9TRC1jYXJkIGluaXRp
YWxpemF0aW9uIG1heSBmYWlsIG9uIE5hbm9QaSByNHMgd2l0aAo+ICJtbWMxOiBwcm9ibGVtIHJl
YWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCj4gIm1tYzE6IGVycm9yIC0xMTAgd2hpbHN0IGlu
aXRpYWxpc2luZyBTRCBjYXJkIgo+Cj4gTW9yZW92ZXIsIHJlYm9vdGluZyB3b3VsZCBhbHNvIHNv
bWV0aW1lcyBoYW5nLgo+Cj4gVGhpcyBpcyBjYXVzZWQgYnkgdGhlIGdwaW8gZW50cnkgZm9yIHRo
ZSB2Y2MzdjAtc2QgcmVndWxhdG9yOwo+IGV2ZW4gdGhvdWdoIGl0IGFwcGVhcnMgdG8gYmUgdGhl
IGNvcnJlY3QgR1BJTyBwaW4sIHRoZSBwcmVzZW5jZQo+IG9mIHRoZSBiaW5kaW5nIGNhdXNlcyB0
aGVzZSBlcnJvcnMuCj4KPiBGaXggdGhlIHJlZ3VsYXRvciB0byBkcm9wIHRoZSBncGlvIGJpbmRp
bmcgYW5kIGFkZCBhIGNvbW1lbnQKPiB0byBwcmV2ZW50IGFjY2lkZW50YWwgcmVpbnRyb2R1Y3Rp
b24gb2YgdGhhdCBlbnRyeS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLb2hsc2Now7x0
dGVyIDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPiBpbmRleCA4YzBmZjZjOTZlMDMu
LmQ1ZjhhNjJlMDFiZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1uYW5vcGk0LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1uYW5vcGk0LmR0c2kKPiBAQCAtNjcsNyArNjcsNyBAQCB2Y2MxdjhfczM6IHZjYzF2
OC1zMyB7Cj4gICAgICAgICB2Y2MzdjBfc2Q6IHZjYzN2MC1zZCB7Cj4gICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiAgICAgICAgICAgICAgICAgZW5hYmxl
LWFjdGl2ZS1oaWdoOwo+IC0gICAgICAgICAgICAgICBncGlvID0gPCZncGlvMCBSS19QQTEgR1BJ
T19BQ1RJVkVfSElHSD47Cj4gKyAgICAgICAgICAgICAgIC8vIGdwaW8gPSA8JmdwaW8wIFJLX1BB
MSBHUElPX0FDVElWRV9ISUdIPjsgLy8gYnJlYWtzIFNESEMgY2FyZCBzdXBwb3J0CgpUaGlzIGNo
YW5nZSBvbmx5IG1lYW5zIHRoYXQgdGhlIHJlZ3VsYXRvciBubyBsb25nZXIgZ2V0cyBjeWNsZWQg
d2hlbgppdCBwcm9iZXMuIEl0J3Mgbm90IGEgcHJvcGVyIGZpeC4gWW91J3JlIGxlYXZpbmcgdGhl
IGtlcm5lbCB3aXRob3V0CmFueSBjb250cm9sIG92ZXIgU0QgY2FyZCBwb3dlciwgYW5kIHdpdGgg
d2hhdGV2ZXIgc3RhdGUgdGhlIGJvb3Rsb2FkZXIKbGVmdCB0aGUgR1BJTyBpbi4gSWYgdGhlIGJv
b3Rsb2FkZXIgbGVmdCB0aGUgR1BJTyBsb3csIHRoZW4geW91IGRvbid0CmdldCB0byB1c2UgdGhl
IFNEIGNhcmQsIGV2ZXIuCgpJdCBjeWNsZXMgYmVjYXVzZSBvZiB0aGUgbGFjayBvZiByZWd1bGF0
b3ItYm9vdC1vbiwgc28gdGhlIGRyaXZlcgpyZXF1ZXN0cyB0aGUgR1BJTyB3aXRoIGluaXRpYWwg
bG93IHN0YXRlLCBhbmQgdGhlbiBkcml2ZXMgaXQKaGlnaCB0byBlbmFibGUgdGhlIHJlZ3VsYXRv
ci4KCj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMwX3B3cl9oPjsKPiAgICAgICAgICAgICAgICAg
cmVndWxhdG9yLWFsd2F5cy1vbjsKCkkgdGhpbmsgZHJvcHBpbmcgInJlZ3VsYXRvci1hbHdheXMt
b24iIHNvIHRoYXQgTGludXggY2FuIGN5Y2xlIHBvd2VyCmFuZCBwcm9wZXJseSByZXNldCB0aGUg
U0QgY2FyZCBpcyB0aGUgcHJvcGVyIGZpeCB0byB0aGUgY2FyZCBiZWluZwpzdHVjayBpbiBVSFMg
YW5kIG5vdCByZXNwb25kaW5nLgoKQWxzbywgdGhlIHJlZ3VsYXRvciB1c2VkIGlzIFJUOTE5Mywg
YWNjb3JkaW5nIHRvIHRoZSBzY2hlbWF0aWNzLiBUaGF0CmNoaXAgaGFzIGFuIGVuYWJsZSBkZWxh
eSB1bmRlciA1MCBtaWNyby1zZWNvbmRzLiBJZiB0aGF0IG5lZWRzIHRvIGJlCm1vZGVsZWQsIHRo
ZW4gYWRkIHJlZ3VsYXRvci1lbmFibGUtcmFtcC1kZWxheS4KCgpSZWdhcmRzCkNoZW5ZdQoKPiAt
LQo+IDIuMzYuMQo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
