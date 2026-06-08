Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49748CD8CA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 20:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0zFzO88useRbWRRlDq+fdcf65Q7jgmhvDolSLszW0+o=; b=M9mG2I8ISePFccCz8Vc+ovDfRc
	yffktQqUhidvztrK7dt+ErtMaPPs3a8xopvj56wac8b2TEzugf/LIz7HDVrptASN3hVI8n3liyFsy
	Owf6iZFw4kya7oErGfFegfk7ZEo16LoUYgRCFBXxlh7ULSQOqTp8frfeIWcaFYm77g6/oycM2WPam
	4seiyGAETUk9ne19FUxfRe16bgzhTQPRsVcHchJMRDIPHCkYnBgqb2dqKOheVQAILqtZiFDjtHO+Q
	PbE+YAX4V57x175Ll2emC92WhtNjReQkGSpKtOfYLp4k5R5UOuRg1Lay0UuGpmeIdNak4MPlXlnrc
	QAG7fH0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgUg-00000004MCh-2ZbJ;
	Mon, 08 Jun 2026 20:22:46 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgUe-00000004MCJ-43pE
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 20:22:46 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-8ccea53f35cso50590476d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 13:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1780950164; x=1781554964; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vQEEMft7f0pvYlAEq6RrP5hBFk6klhTFUMQXwCgeb60=;
        b=Ykd1XWLq3HE3YIKqapGdoFfUhiXZr6BU6g7/uTKztuC2QwdAuThBKY8o6Uz2QQouv/
         eVsO1lbiG+qUPj0L2j5JC8bpg53+j01M45TpBddSFfHCV55qu0HC427E2tysJVQS6BtU
         m06nFO2UDdjhyxIhVPzd1Q972CwzFJrY0AUnHMY+ojkg0VPOiuZ7vS8QhhJgb8kVYBHi
         GoId9kkzvjfAwEsAuOE6b4P/KXnQxzcGKUo8VhTsFqPj5du5X/hOcue96z+8hfmTl/hY
         qh6I5SWgXY15Ong0keg/yYlyYDCjzed2tHrwUDLfHUvRfGgi50TVxbFOrQfHICXUO1YH
         vbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780950164; x=1781554964;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQEEMft7f0pvYlAEq6RrP5hBFk6klhTFUMQXwCgeb60=;
        b=rndMuLTiDIVWlRWkm2sNcMg9OQqdf2xzWRmptMmyxeo8OhOWXm66jPoMwg51RtMlNe
         r6a2px2rJAhj6dl9Hdv3PciZcUtuWdNUXy7P/b9CLvM8lnpzQ5Mij8c1/DE6Z/zZRaiu
         I/58bRCiPha/VZZplaO05C7R5Q9HVCmzW5Wjb7gATXcqS+yNwWdKmbJUfvgAV+6IxXi0
         DspmrPti/1QqW217RnzgUjlHDrpuBPKh7avU2NYqvRs2o6rg1LLa6O4wWKX6jOt9D/AP
         ef8YRXHOBmXg0PAr/dKamce8k6aAUApDOZ/snlz7IFunvGtzBMPW3dNlsV3d4ZmQm5Cd
         D5Ww==
X-Gm-Message-State: AOJu0YwWVpgq626PMhT79x+nL9smjriiUWo2xf1HGr3nNVcZwRKX2MiE
	qPDeS8CrEuhm/mVvQVE2zbknV1nhANCDxMm8l3JEvqJK6QeiYSJoUmlZNCISh2nzWllneqwWFb2
	ghbAr8/3GHQ==
X-Gm-Gg: Acq92OFHb1P2t7laC4Wa/395gADYmxapZagNH+7F01vH2C8awyLdOp4uvXZ+gJp8o83
	OrpHQ00pEZ1eFW5Yx4EOyzkLuR7I4/CeU9t9i2RiewqMXOxUJeaiwZfqjkS6uSPYbvDrbq5T57e
	VvbOqEz9rqFtqxUHFooWSOtHEaFGSfEbUnKEhRrZd1YOYMtJdqrtRAKSkzjcP7njzuArrZ4LEUl
	EglDPIjRg9kjlaGATK0pPHGjZXnFBZ3mlowd98u/EPJpYm73Vlz8rh+mQuYr7pxszvq6v99YWRy
	a1oFHEgVgMjstfh6FYGco11HX5JmRAjbb4UXUfCBQFi2JimQi7mL9ffdJjGyJbt8fpt5xQsFmB3
	XYvhcgP22ybwduPSNXpI/vyc6Ok8zEjKUcHdNskaw9InpjobhFgKN93xn/Ra2QqQOllLZ/hx06H
	dulE7xSfJFkqfQWbXvvK0GOL9r+ms3eQ6ZIaCRp0fjRPYvlXPbPOv6y4Hbqdavbr6q9k2YvB0DO
	unGW70=
X-Received: by 2002:a0c:f147:0:20b0:8ac:8938:ee55 with SMTP id 6a1803df08f44-8cee5fe0585mr223459246d6.11.1780950163732;
        Mon, 08 Jun 2026 13:22:43 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8cecd0521f2sm177874226d6.31.2026.06.08.13.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 13:22:42 -0700 (PDT)
Message-ID: <25a232dca0236788c75231c43ee8a01741148c37.camel@ndufresne.ca>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Simon Wright <simon@symple.nz>, Detlev Casanova
	 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Date: Mon, 08 Jun 2026 16:22:41 -0400
In-Reply-To: <66768711-6943-43f5-95fa-3d97dc638844@symple.nz>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
	 <5797ac61-dc61-4182-ac60-cc377564ff90@collabora.com>
	 <2565c949-a558-415f-8c79-e47812db8341@symple.nz>
	 <e3b93bda-fed8-4f21-b3d8-cdf28bfaba1c@collabora.com>
	 <4358f22d-247c-43d3-89d4-27b57bbe90aa@symple.nz>
	 <66768711-6943-43f5-95fa-3d97dc638844@symple.nz>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_132245_037969_BAC7F8FB 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6627952589898388751=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6627952589898388751==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-CvLQQKJzZSf22y9CSCbT"


--=-CvLQQKJzZSf22y9CSCbT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,

Le lundi 08 juin 2026 =C3=A0 17:11 +1200, Simon Wright a =C3=A9crit=C2=A0:
> It's an un-primed hardware state after power-up, not BL31 and not a
> per-frame register. The Rockchip BSP runs a one-shot priming decode at
> every decoder power-on -- rk3576_workaround_run() in
> drivers/video/rockchip/mpp/hack/mpp_hack_rk3576.c builds a tiny
> self-contained H.264 task and runs it through the decoder at probe and
> on every pm_runtime resume. Mainline rkvdec has no equivalent, so the
> first decode(s) after each power-up run with indeterminate internal
> deblock state.

another one, in the link, it says you have compared SRAM vs DRAM for RCB, t=
o
rule out the location of the RCB data as a problem. You haven't dumped the =
RCB
data before and after in a way that the state of the RCB data could not be
compared against Detlev (working) case. It if was an RCB data state, it way
simpler to just initialize it.

Nicolas

--=-CvLQQKJzZSf22y9CSCbT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaickkQAKCRDZQZRRKWBy
9EtkAP9weWAy5NLYKRn7EY1Ggsgr5cAq1cssShILvEtBU4INagD/bFytns+fyCZU
R4jXlzRX20D2NO/HyrfvKhg0fyGMVwE=
=XYhp
-----END PGP SIGNATURE-----

--=-CvLQQKJzZSf22y9CSCbT--


--===============6627952589898388751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6627952589898388751==--

