Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A0FD148AF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qG/LOo3/edg2S+XCMzWBfby1PWvMpFmbqyAnJRKGb/o=; b=k4SbQi1/z2wMR9
	nKixCYVCqjLUwwPSZB3wdIlcUPHRkGbn+u7E/awS1BrG4RlStMqLnf2EXj/LuYGaaoWXtZMiZT41R
	qmYqL3vLRUicyzkcdWrSDtx2JqvqiVm39JqkLU3wNbEMDiDNZ6vR6xKXt07x8rmP1Ro1lJKSSWLBw
	T3JqypyC22NXfoNdCDGAI6xaALWueaEqBhtmgoQB8v3N7HRO0q1Xt2SrayWuZO/oNH6qhUVRjcy8D
	TNo3mysY8RBfEGX5PzVj39++8uWTstHWOjhVPyg5yc5ibQSRIogn3aLPDHM6KuLYdS/JmwFIm73OB
	P8JY9utIZR8xRWHbjh+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjyZ-0000000G2yB-455F;
	Thu, 08 Jan 2026 06:58:31 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjyX-0000000G2xd-0ZIs
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:58:30 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b72b495aa81so546787566b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855507; x=1768460307; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sYeFfJDOtbvDKy6cB1/fU/DI+WOGrumUUZyn+Dpeblk=;
        b=VdGeR/7GMs+ZpWM1EHk0OfK0wv4xjk38e9GH1xiQm3LQ23c4xpHR/ERmZdBDQuhYGm
         sZZ6INa6PNl0x7EnoKrIx4O4s/zfFW7eYZW9s3isHl6n5RJj90iAwbR53C+e7nhCY4XV
         IvgLgP6YFWg4tZRR0zq8koG5RPWTzh+SmjyaQLd6xW5PaIR91nNS2tvAZG4f1EkOf/hJ
         GFVW29zbzJ4J/37HXsvL0hmlazuVCsaOb99AERRvxdMyhwkjx6ZJ0hZFDzmJig9vt4eg
         EkKZX8WJQpW+QAdFryDXl5RkDiGAq2E4E5OVOFxn1Wljy0cM99fnw01MO9k+WGIaSZvE
         XJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855507; x=1768460307;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sYeFfJDOtbvDKy6cB1/fU/DI+WOGrumUUZyn+Dpeblk=;
        b=E9zpSmnbvEPEL6puO51MM49pQ6KI0w7y4qrMK+IEaSR4RWZkaBej1T6+GF+M6wmVYD
         kvtslk+KYqUUJGov8bwTpXdxpMYwGb2gBOVp/Ul4YzLup500D6lFziHOybyw41vFzMf5
         HOVdN+8VmD2qI5G6AjRP7fSLjddie960qjh15u+Ocvi9aQfUmmh41jWgYfDJFOe/YSft
         u/lzdcP1HOkzbDYwu2lU5vYxMFXZnWXx/dzooDUx/epSRu1yy6cNTfZHjZTEpVBuCuRS
         yrbJ68SBWxeY8RyANb8Yc1oKGooLMyuc8U6ZQoC/F0ecZ2L5kFzGcpSMlfk+BtyVpCrz
         B9mA==
X-Forwarded-Encrypted: i=1; AJvYcCXrp3tj0ZCx2FDcfNtiH5JVIZmkB3SRLWBZOIfa/KLEiNkOKhm2ztgkSdcjO9ouxa62+BPpd6nobss8c+Kx6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywv4pTZ3epWBrifaGoFekjHRWYXC5OBNRPpRsz1Jk0AlnMdJXjp
	8LW295HC9LF0Man5mKscBT/cvFtvkVVKHKHRRzriy+9/R48rmbN4ruVkZhKlP65CNLbxrzRvJjx
	8qsdaZYb84/ehuYp2JK1UuyXQwvF2/qg=
X-Gm-Gg: AY/fxX6o+4IxN/1CU26zagQNIw8eeK9fpINw1//rYVl5H2DAQKqqhRu8F/RZ9vV+M79
	HJnYJDbm5LpJPB2qFH/6ph/sAAh3GweI4Ks10GOBZQwEqgEvnx46c1PEKHjh/GZwVWfiAuP31in
	1l2DOaiDO7Vy02RaOPQyTwZZqiY4QSJ8utN3lAf4A2hEzpdMpRKEQj3Taka4KuZfZwmQQWjUOaE
	kzWYCAzedOe1cuJf+/a8KzH7c3lAbGzAjYJ8/ZtEN6gmZtaGffHmlnHGlmL8TFLB2xDTfoaKs0b
	Cg==
X-Google-Smtp-Source: AGHT+IGIv8je1lwIFxUAxVKr8gjmi2iZWFwhU08dBg/NL+MZXVQZ+Lx4oYIn2q3AFG6kac8NGhSiSqj5lIo7m6W/X7g=
X-Received: by 2002:a17:907:3c91:b0:b77:2269:8de6 with SMTP id
 a640c23a62f3a-b84452334a8mr466404066b.19.1767855507070; Wed, 07 Jan 2026
 22:58:27 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org> <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
 <080d9ed6-18f9-437e-89d4-aba8f69120fb@kernel.org>
In-Reply-To: <080d9ed6-18f9-437e-89d4-aba8f69120fb@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:28:09 +0530
X-Gm-Features: AQt7F2rN9qCMZO0iKuorur3QruVtd3JYaKO-CAyPTZyFV9EDijrAUUQ7GfBMQ5U
Message-ID: <CANAwSgRqpAopSGcZ=isLxALFcuPW0E4DBZzMhQvwRBhHMK0thg@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt handler
To: Hans de Goede <hansg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225829_200105_1F46A8AB 
X-CRM114-Status: GOOD (  25.44  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?B?5byg5rC45rOi?= <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGFucywKCk9uIFdlZCwgNyBKYW4gMjAyNiBhdCAxNjoyMiwgSGFucyBkZSBHb2VkZSA8aGFu
c2dAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIDctSmFuLTI2IDEwOjUyLCDlvKDm
sLjms6Igd3JvdGU6Cj4gPj4gU3RpbGwgaWRlYWxseSB3ZSB3b3VsZCBzb2x2ZSB0aGlzIGluIGFu
b3RoZXIgd2F5IHRoZW4KPiA+PiBzd2l0Y2hpbmcgdG8gYSB0aHJlYWRlZCBJUlEgaGFuZGxlci4K
PiA+Pgo+ID4+IEFzIHRoZSBjb21taXQgbWVzc2FnZSBvZiB0aGUgbWVpLXZzYyBmaXggbWVudGlv
bnMKPiA+PiB0aGUgcm9vdCBjYXVzZSBvZiB0aGVzZSBlcnJvcnMgaXMgdHlwaWNhbGx5IGFuIGlu
dGVycnVwdAo+ID4+IGNoaXAgZHJpdmVyIHdoaWNoIHVzZXMgSVJRRl9OT19USFJFQUQgZGlzYWJs
aW5nIHRoZSBhdXRvCj4gPj4gdGhyZWFkaW5nIG9mIGFsbCBpbnRlcnJ1cHQgaGFuZGxlcnMgaW4g
UlQgbW9kZS4KPiA+Pgo+ID4+IFNvIHRoZSBmaXJzdCBxdWVzdGlvbiBoZXJlIHdvdWxkIGJlIHRv
IHNlZSBpZiB0aGF0IGZsYWcgaXMKPiA+PiB1c2VkIGluIHRoZSBpbnRlcnJ1cHQgY2hpcCBhbmQg
aWYgeWVzLCBpcyB0aGF0IGZsYWcgcmVhbGx5Cj4gPj4gbmVjZXNzYXJ5ID8KPiA+IFRoaXMgaXMg
dmVyeSBzaW1pbGFyIHRvIHRoZSBpc3N1ZSBhZGRyZXNzZWQgaW4gY29tbWl0IDI0YjE3NmQ4ODI3
ZAo+ID4gKCJkcm0vbXNtL2RzaTogUmVtb3ZlIHNwdXJpb3VzIElSUUZfT05FU0hPVCBmbGFnIiku
Cj4gPiBUaGUgSVJRRl9PTkVTSE9UIGZsYWcgaXMgcHJldmVudGluZyBmb3JjZWQgdGhyZWFkaW5n
IGhlcmUuCj4gPgo+ID4gSW4gaXJxX3NldHVwX2ZvcmNlZF90aHJlYWRpbmcoKSwgdGhlIGNvbnZl
cnNpb24gdG8gdGhyZWFkZWQgaW50ZXJydXB0cwo+ID4gaXMgZXhwbGljaXRseSBza2lwcGVkIGlm
IGFueSBvZiB0aGUgSVJRRl9OT19USFJFQUQsIElSUUZfUEVSQ1BVLAo+ID4gb3IgSVJRRl9PTkVT
SE9UIGZsYWdzIGFyZSBwcmVzZW50LiBJbiB0aGlzIGNhc2UsIElSUUZfT05FU0hPVAo+ID4gYXBw
ZWFycyB0byBiZSB0aGUgcmVhc29uLgo+Cj4gQWgsIHdlbGwgdGhlIGNvZGUgZWZmZWN0aXZlbHkg
ZG9lcyBpdHMgb3duIElSUUZfT05FU0hPVCBoYW5kbGluZywKPiBzaW5jZSBpdCBuZWVkcyB0byBk
byBpdHMgb3duIHRocmVhZGVkLWlycSBsaWtlIGhhbmRsaW5nIGZvcgo+IHN1c3BlbmQvcmVzdW1l
IHJlYXNvbnMuIEl0IGRpc2FibGVzIHRoZSBJUlEgd2hlbiBpdCBmaXJlcyBhbmQKPiB0aGVuIG9u
bHkgcmUtZW5hYmxlcyBpdCBvbmNlIHRoZSB3b3JrIGhhcyBkb25lIHByb2Nlc3NpbmcgdGhlIElS
US4KPgo+IFNvIGl0IHNob3VsZCBiZSBwZXJmZWN0bHkgc2FmZSB0byBkcm9wIHRoZSBJUlFGX09O
RVNIT1QgZmxhZy4KPgpZZXMsIHRoZSB3YXJuaW5nIGRpc2FwcGVhcnMKPiBJZiB0aGF0IGFsc28g
d29ya3MgdG8gcmVzb2x2ZSB0aGUgbG9ja2RlcCBpc3N1ZSB0aGF0IHdvdWxkIGJlCj4gdGhlIHBy
ZWZlcnJlZCB3YXkgb2YgZml4aW5nIHRoaXMgSU1ITy4KPgpBZnRlciBhcHBseWluZyB0aGVzZSBj
aGFuZ2VzLCB0aGUgZGV2aWNlIGluaXRpYWxseSB0cmlnZ2VyZWQgYSBoYXJkIHJlc2V0OwpBbmQg
dGhlIGJvYXJkIHJlYm9vdHMuIEkgbmVlZCB0byBmaW5kIGFub3RoZXIgd2F5IHRvIGZpeCB0aGlz
IHdhcm5pbmcuCgpIb3dldmVyLCBhZnRlciBzZXZlcmFsIHJlYm9vdHMsIGl0IHJldHVybmVkIHRv
IGEgbm9ybWFsIGJvb3Qgc2VxdWVuY2UuCgpbICAgNDAuNDA0NTI1XVsgVDU5NzRdIHJvY2tjaGlw
LWR3LXBjaWUgYTQxMDAwMDAwLnBjaWU6IExUU1NNX1NUQVRVUzogMHgxMzAwMTEKWyAgIDQwLjQw
NDkzNl1bIFQ0OTU3XSByODE2OSAwMDA0OjQxOjAwLjA6IGVuYWJsaW5nIE1lbS1Xci1JbnZhbApb
ICAgNDAuNDA2NTkxXVsgICBUNTZdIGR3bW1jX3JvY2tjaGlwIGZlMmQwMDAwLm1tYzogSURNQUMg
c3VwcG9ydHMKMzItYml0IGFkZHJlc3MgbW9kZS4KWyAgIDQwLjQwNzM3MF1bICAgVDU2XSBkd21t
Y19yb2NrY2hpcCBmZTJkMDAwMC5tbWM6IFVzaW5nIGludGVybmFsIERNQQpjb250cm9sbGVyLgpb
ICAgNDAuNDA4MDEzXVsgICBUNTZdIGR3bW1jX3JvY2tjaGlwIGZlMmQwMDAwLm1tYzogVmVyc2lv
biBJRCBpcyAyNzBhClsgICA0MC40MDg2MTBdWyAgIFQ1Nl0gZHdtbWNfcm9ja2NoaXAgZmUyZDAw
MDAubW1jOiBEVyBNTUMgY29udHJvbGxlcgphdCBpcnEgMTA0LDMyIGJpdCBob3N0IGRhdGEgd2lk
dGgsMjU2IGRlZXAgZmlmbwpbICAgNDAuNDEzMzczXVsgICBUNTZdIG1tY19ob3N0IG1tYzI6IGNh
cmQgaXMgbm9uLXJlbW92YWJsZS4KWyAgIDQwLjQzMTA3Ml1bICAgVDU2XSBtbWNfaG9zdCBtbWMy
OiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0MDAwMDBIegooc2xvdCByZXEgNDAwMDAwSHosIGFjdHVh
bCA0MDAwMDBIWiBkaXYgPSAwKQpbICAgNDAuNDY4MjM1XVsgICBUNjddIG1tY19ob3N0IG1tYzI6
IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDMwMDAwMEh6CihzbG90IHJlcSAzMDAwMDBIeiwgYWN0dWFs
IDMwMDAwMEhaIGRpdiA9IDApClsgICA0MC40OTIyMjldWyBUNDk1N10gcjgxNjkgMDAwNDo0MTow
MC4wIGV0aDA6IFJUTDgxMjVCLAowMDplMDo0Yzo2ODowMDozNSwgWElEIDY0MSwgSVJRIDE1Mwpb
ICAgNDAuNDkyOTkzXVsgVDQ5NTddIHI4MTY5IDAwMDQ6NDE6MDAuMCBldGgwOiBqdW1ibyBmZWF0
dXJlcwpbZnJhbWVzOiAxNjM2MiBieXRlcywgdHggY2hlY2tzdW1taW5nOiBrb10KWyAgIDQwLjQ5
Mzg3M11bIFQ0OTU3XSByODE2OSAwMDA0OjQxOjAwLjA6IHZnYWFyYjogcGNpX25vdGlmeQpbICAg
NDAuNTA3MTMzXVsgVDU5NzRdIHJvY2tjaGlwLWR3LXBjaWUgYTQxMDAwMDAwLnBjaWU6IFJlY2Vp
dmVkIExpbmsKdXAgZXZlbnQuIFN0YXJ0aW5nIGVudW1lcmF0aW9uIQpbICAgNDAuNTA4MjE5XVsg
VDU5NzRdIHBjaV9idXMgMDAwNDo0MDogc2Nhbm5pbmcgYnVzClsgICA0MC41MTczODddWyBUNTk3
NF0gcGNpZXBvcnQgMDAwNDo0MDowMC4wOiBzY2FubmluZyBbYnVzIDQxLTQxXQpiZWhpbmQgYnJp
ZGdlLCBwYXNzIDAKWyAgIDQwLjUxNzg2N11bICAgVDY3XSBtbWNfaG9zdCBtbWMyOiBCdXMgc3Bl
ZWQgKHNsb3QgMCkgPSAyMDAwMDBIegooc2xvdCByZXEgMjAwMDAwSHosIGFjdHVhbCAyMDAwMDBI
WiBkaXYgPSAwKQpbICAgNDAuNTE4MzM2XVsgVDU5NzRdIHBjaV9idXMgMDAwNDo0MTogc2Nhbm5p
bmcgYnVzClsgICA0MC41MTk1MzFdWyBUNTk3NF0gcGNpX2J1cyAwMDA0OjQxOiBidXMgc2NhbiBy
ZXR1cm5pbmcgd2l0aCBtYXg9NDEKWyAgIDQwLjUyMDI5NF1bIFQ1OTc0XSBwY2llcG9ydCAwMDA0
OjQwOjAwLjA6IHNjYW5uaW5nIFtidXMgNDEtNDFdCmJlaGluZCBicmlkZ2UsIHBhc3MgMQpbICAg
NDAuNTIxMjczXVsgVDU5NzRdIHBjaV9idXMgMDAwNDo0MDogYnVzIHNjYW4gcmV0dXJuaW5nIHdp
dGggbWF4PTQxCkREUiBmZjFhMDhiZGU2IHR5cCAyNS8wMy8xMy0xNTozOTozOSxmd3ZlcjogdjEu
MTkKY2gwIHR0b3QxMApjaDEgdHRvdDEwCmNoMiB0dG90MTAKY2gzIHR0b3QxMApjaDAgdHRvdDE2
CkxQRERSNFgsIDIxMTJNSHoKY2hhbm5lbFswXSBCVz0xNiBDb2w9MTAgQms9OCBDUzAgUm93PTE2
IENTMSBSb3c9MTYgQ1M9MiBEaWUgQlc9MTYgU2l6ZT0yMDQ4TUIKY2gxIHR0b3QxNgpjaGFubmVs
WzFdIEJXPTE2IENvbD0xMCBCaz04IENTMCBSb3c9MTYgQ1MxIFJvdz0xNiBDUz0yIERpZSBCVz0x
NiBTaXplPTIwNDhNQgpjaDIgdHRvdDE2CmNoYW5uZWxbMl0gQlc9MTYgQ29sPTEwIEJrPTggQ1Mw
IFJvdz0xNiBDUzEgUm93PTE2IENTPTIgRGllIEJXPTE2IFNpemU9MjA0OE1CCmNoMyB0dG90MTYK
Y2hhbm5lbFszXSBCVz0xNiBDb2w9MTAgQms9OCBDUzAgUm93PTE2IENTMSBSb3c9MTYgQ1M9MiBE
aWUgQlc9MTYgU2l6ZT0yMDQ4TUIKTWFudWZhY3R1cmVyIElEOjB4Ngo+IFJlZ2FyZHMsCj4KPiBI
YW5zCj4KClRoYW5rcwotQW5hbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
