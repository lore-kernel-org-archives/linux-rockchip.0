Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60852CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 00:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBTqyTjGpIaq8oyaCrEjfGzna9ZSwkfucM7OujCHUZo=; b=dUh5q4+0VG7twc
	TpRW6mn+J4xH58PRaSYk7U+oPgWdZHl0UE1yR12NPck3E5YUdgaqn8kXE24RKHZTaVQZaVF0xsGsp
	WVsA4Ov+vhwo30gKZc3MgzzLwtFTrTWMHTr562PTSVXmqtleMgPQ+lT1/ngrgH7o7UHTxvuEaqOLb
	4lWwhMlod2iWHvIUaneULBdFZevxPWo5acZz+Vm5e7w7kMJpQLfUubeEcaR9HJbGt5pswevM4XX19
	LTahwDsivD0RnKmVKbfT6a6hi3R+MGTNUagjKhr419HQUM3NLYARqRjD66B3vIaJ8BILstR9Az9k5
	DA0JVmbYChSebu9hY2KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussKl-0000000Arm7-2lSJ;
	Mon, 01 Sep 2025 00:23:43 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussHo-0000000Arbk-2In6;
	Mon, 01 Sep 2025 00:20:41 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-61cf8280f02so3875872a12.0;
        Sun, 31 Aug 2025 17:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756686039; x=1757290839; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGA1e9SWx5rX3wnMF8cYm7WiNRZD38DWQOe4gRTSbMk=;
        b=YDwI6kJ4H7tyETp3iHuXUCLFjqOeUy+HC7wPxY3vwv0qGJTFYHivWfmnfTlnXNxZHg
         RcQv3WQOqEZG7cI6gvziRfs4ikd8Y9Hmnw8WKRDEbqKvkMKZM0EFLJYmtB65UguJcLMk
         4/R0zrH/9l7X2IcBGVuLWJe3IhoPS6rveqevjb/UkSFeyFUxTlmb2mQ3LngKvGFTQJFj
         bHBboXCp3pimn6kOvfXTtGkCdP+opg4rHQutSBIgfWpsnCPJbXdbIz8pVFcNolYuoCxj
         +b2+qbB9fIlre1wiiKuKmQHDOdjGhi0dGP2T5uttSYBCSUEUCX3pkM3gFcx0Isipqz5X
         UVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756686039; x=1757290839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGA1e9SWx5rX3wnMF8cYm7WiNRZD38DWQOe4gRTSbMk=;
        b=aN9qS+si2UhIJGOIf1X0TUxY09Dn/u+2LQ1sgZp4srSMmCCcN9iUXy4zxlMzVTcSBB
         Yba6wMhgXgOk8f76MIKEDgV88B7rP4z7dQoiLi3ehRy3HrmzANwVZFZQCBaqM6mlLunk
         l3FbAMPWW5mEezLNDuMn3D6QXqwvmGhaHKnzWrD8FRRrwD4oSmwJ7j0MJac1vOC9yIyH
         2O9/ay5tmCu2ufBjFXN8MjOBdH8AO0UTM4oDTSpFsGrJhmxaulUt0Cbk3eDcSQNi3j/W
         tc/8LwskMWx88Q09n+tj50mSnbWnx4PWsq24+SjO+2dZzqe1wjXVNHVyF0Uomp37qmfk
         Z96g==
X-Forwarded-Encrypted: i=1; AJvYcCUzgGd/ksl+EOCIDhwkrEfmG6IW02AVlVq/frRaNDL22y89e54TS+Dv/S3MbQpjjKpyVwzKAzo/j1UbFmexB/Pr@lists.infradead.org, AJvYcCWCFnBA61BzBlyQHNFcj/HsgPm07PynhnTczR+wVlbyhPT7tp+9PRMBgK00MfzZMmhgmnKSh4jwOTKLVS3xeZY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/rYkfA7gcqx34+QDvIa9ckBdP/WJ1WgYNAaBwHnWXmZGLKMSa
	T61wbTfPMx66IVZbj4B0NR+lWTWtAK3RgL4xTWsuoh63NHnXBlrE3Z9uUhqzKj7AXxtjgF44LkT
	HykCuRoQ6zw4w6HSEux7OY7JRphyHwcw=
X-Gm-Gg: ASbGncssYaAHeQ/XOnk0YF5R+U+jQTYA3vVmnM1q1cj96Xu9hgmqkYvL8LbqDQ+5NSP
	tlThL6X0pXeq3id4+oQe1kFXfc8iAyjMkzHvoqCb5PpoTJmMAvxnaFPnoqgzsDg4lzadrkjwiQD
	q/e2/QH6sXKeLlPPSXEWje7vk/Q53qkc1Gjnw/txXBE/89inOgSU7LE5/PBBry9QrnIgtf4EXgb
	3mcEc5bYWRhJA==
X-Google-Smtp-Source: AGHT+IE2lhwT6Yzu3q9B3kLM5n807WkxfNRIG/AC95Pv7jUReWAmbkcsG8EsO/ckMMSuQjMFJIJQfLO5Xj7HXKZ2xPM=
X-Received: by 2002:a05:6402:4303:b0:61c:deac:4693 with SMTP id
 4fb4d7f45d1cf-61d269881e0mr5843191a12.12.1756686038562; Sun, 31 Aug 2025
 17:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <20250831104855.45883-6-cn.liweihao@gmail.com>
 <3368190.aeNJFYEL58@diego>
In-Reply-To: <3368190.aeNJFYEL58@diego>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Mon, 1 Sep 2025 08:20:27 +0800
X-Gm-Features: Ac12FXyWs5ayjwnKI44Mb7gtjPKcOLOC6rRUCDyygTcTJqSzEgRm03n4Up5wwFo
Message-ID: <CAPEOAkRZbnVNCRHQnfJu610TK6gkJ0+YrpoL3-xsqTWm7NUsWQ@mail.gmail.com>
Subject: Re: [PATCH v1 5/7] ARM: dts: rockchip: Add display subsystem for RK3368
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_172040_591899_C6F2284E 
X-CRM114-Status: GOOD (  16.83  )
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

SGkKClNvcnJ5IGFib3V0IHRoYXQsIEkgZGlkbid0IG5vdGljZSB0aGlzIGJlZm9yZSwgSSB3aWxs
IGFkanVzdCBpdAphY2NvcmRpbmcgdG8gdGhlIGRvY3VtZW50YXRpb24uCgpCZXN0IHJlZ2FyZHMs
CldlaUhhbwoKSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyNeW5tDjmnIgz
MeaXpeWRqOaXpSAyMzowNOWGmemBk++8mgoKPgo+IEhpLAo+Cj4gQW0gU29ubnRhZywgMzEuIEF1
Z3VzdCAyMDI1LCAxMjo0ODo1MyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWVi
IFdlaUhhbyBMaToKPiA+IEFkZCB2b3AgYW5kIGRpc3BsYXktc3Vic3lzdGVtIG5vZGVzIHRvIFJL
MzM2OCdzIGRldmljZSB0cmVlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24u
bGl3ZWloYW9AZ21haWwuY29tPgo+Cj4gcGxlYXNlIHVzZSB0aGUgYXBwcm9wcmlhdGUgcGF0Y2gg
cHJlZml4LiBGb3IgYXJtNjQgdGhpcyBzaG91bGQgYmUKPiBhcm02NDogZHRzOiByb2NrY2hpcDoK
Pgo+IFRoZSBvbmUgeW91J3JlIHVzaW5nIGlzIGZyb20gdGhlIGFybTMyIHNpZGUuCj4KPiBBbHNv
IHBsZWFzZSBzb3J0IHRoaW5ncyBhcHByb3ByaWF0ZWx5IGJvdGggbm9kZS1wb3NpdGlvbiBhbmQg
b3JkZXIgb2YKPiBwcm9wZXJ0aWVzIGluc2lkZSBub2Rlcywgc2VlCj4gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2R0cy1jb2Rpbmctc3R5bGUucnN0Cj4K
Pgo+IEhlaWtvCj4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
MzY4LmR0c2kgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMjYgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzNjguZHRzaQo+ID4gaW5kZXggNzM2MThkZjdhLi4wZTQ3YmY1OWEgMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC5kdHNpCj4gPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC5kdHNpCj4gPiBAQCAtODU4LDYgKzg1OCwz
MiBAQCB2b3BfbW11OiBpb21tdUBmZjkzMDMwMCB7Cj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gPiAgICAgICB9Owo+ID4KPiA+ICsgICAgIHZvcDogdm9wQGZmOTMwMDAw
IHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzNjgtdm9wIjsK
PiA+ICsgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZmOTMwMDAwIDB4MCAweDJmYz4sIDwweDAg
MHhmZjkzMTAwMCAweDAgMHg0MDA+Owo+ID4gKyAgICAgICAgICAgICByZWctbmFtZXMgPSAicmVn
cyIsICJnYW1tYV9sdXQiOwo+ID4gKyAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MTUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiArICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1
IEFDTEtfVk9QPiwgPCZjcnUgRENMS19WT1A+LCA8JmNydSBIQ0xLX1ZPUD47Cj4gPiArICAgICAg
ICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGtfdm9wIiwgImRjbGtfdm9wIiwgImhjbGtfdm9wIjsK
PiA+ICsgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgQUNMS19WT1A+LCA8JmNy
dSBIQ0xLX1ZPUD47Cj4gPiArICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDQw
MDAwMDAwMD4sIDwyMDAwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICByZXNldHMgPSA8JmNydSBT
UlNUX0xDREMwX0FYST4sIDwmY3J1IFNSU1RfTENEQzBfQUhCPiwgPCZjcnUgU1JTVF9MQ0RDMF9E
Q0xLPjsKPiA+ICsgICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAiYXhpIiwgImFoYiIsICJkY2xr
IjsKPiA+ICsgICAgICAgICAgICAgaW9tbXVzID0gPCZ2b3BfbW11PjsKPiA+ICsgICAgICAgICAg
ICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgdm9wX291dDog
cG9ydCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gPiArICAgICAgICAg
ICAgIH07Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gKyAgICAgZGlzcGxheV9zdWJzeXN0ZW06IGRp
c3BsYXktc3Vic3lzdGVtIHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxkaXNwbGF5LXN1YnN5c3RlbSI7Cj4gPiArICAgICAgICAgICAgIHBvcnRzID0gPCZ2b3Bfb3V0
PjsKPiA+ICsgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsgICAgIH07Cj4g
PiArCj4gPiAgICAgICBoZXZjX21tdTogaW9tbXVAZmY5YTA0NDAgewo+ID4gICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInJvY2tjaGlwLGlvbW11IjsKPiA+ICAgICAgICAgICAgICAgcmVnID0g
PDB4MCAweGZmOWEwNDQwIDB4MCAweDQwPiwKPiA+Cj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
