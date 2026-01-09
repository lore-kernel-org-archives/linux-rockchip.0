Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E819D232D5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 03:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DBOzICs4i4wk+X+KLPx7fEzwW+sQ0N2aIPHgY6K+39k=; b=kPeVhfR0kqy3Vd3YL8X3usmoWu
	FhIa/b2/fZwR3Cdi4qVN3tCMfj5Mk+YiM4vNSrHkQDA1QKX7SRwdQTNxwhoP3hYsSxkWWb7y3lrmC
	YXDXT5b4Lwyw+375+GFJ55apE/0ZGYckqDDERCDC+yI2EHlLikGrSbpPRg5wjsy8mDon7pXU1yhpj
	mh/j+ieNDaT5Sbdg8X9ojrM229Y4Rvmqt7q1yvqqQB//uBsVcle0nE+SwEvg59rPqBVp+mgMVt6hc
	zB29ysdLEEnRAzjErJ1rEuBS9plvINfhcw+hhVi0+xeFDMOk3mbWyFgCWwzdtUEMgQRgVrolHUCQ5
	LPttQGCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Z1-00000001DnP-05Zr;
	Fri, 09 Jan 2026 03:53:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Yy-00000001Dmm-2PEb
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 03:53:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id d2e1a72fcca58-7baf61be569so2548843b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Jan 2026 19:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767930803; x=1768535603; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h+Aa2YGg7UhZCDl66L6h+JyJSb8ah/8nQF29Auvd56Q=;
        b=XQUqH5w0FUew+nZdekVXi63TLtjVBqoLZq1wYoPiHI6nc68CMZs61QVOdQD0CypIXz
         5PVCLGjQ+2e3XiW79Im5eoCFUbXmxNA4JPTQGGKREjKgNORRSsWY6ybhYWbTKNFhvgJz
         03zkCVjDINypk1H7mRBvQVhqLMw0ww3InK9sHVSNq7o+zdW6QjGOAy2K9mBvSRrXDBmi
         y9a0Ju7BYQfFxTbgvwdB9XMp0XRyhlRYYFy5I1Ms071oikMgzl/y0g4vhou7oC3AkCs9
         9GG+ZxJDbwKmhzJL9KsmQY6tmyXHL2eCGQe166u10J4UvbFFiltdXJZSDF3gtw42YAva
         bQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767930803; x=1768535603;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+Aa2YGg7UhZCDl66L6h+JyJSb8ah/8nQF29Auvd56Q=;
        b=p3gOa38Jywp8zOOjDnarPwywk8oBoMtapPbnwe6lxYzExkOKh15LgbB9ew9ORrOK+B
         uGFWGv+xulEft5np/nAWfGsn9O8HWZSWx3kHLzkC6NHOYuxu5GqimddXATAGl15XzbCc
         o4W4Cl6abxMPztBMI+FN2bKNJPtPg6z4DtIfTdtWktfzoET9KrChS1RUrCIwHQNmFNPw
         TeVm7cZDAizw2+W6uHitBBCDgR8CcQa+Dt26yOz9oKxlf1kGI53hpOJ4MTJn1VtXVTtQ
         lRKkVqUZGVC7w/vpsnoeTBs2+UmkOlFE/Mpc3fN5FGQIZOaXUPskIB9CLvNZB+CLsDR6
         5MMQ==
X-Gm-Message-State: AOJu0YwpsdzMhiNNQH/J58fyKbvi8I16Ah3Hk9Z61RhHxppnFsUXM8JF
	cChvdPuCRNBPQUA4OKs/Ep2xTtMUccAPIiEOzCFgcjkzpU57VAmnnzkj
X-Gm-Gg: AY/fxX6hX9X6+6UG0zWqoTZVdX6LudZSvDSnwZgYtKttc38FhWt1wBUj64Zs0yfV7oq
	TVfITtabai5+hvF34vRxBQ1soFeStJQS34nqLI7UYBxsh9s2SYflyXs2gcOQ8hY+QwGG2rtzFl4
	DJkQzqqgQ0cWyG+pP4wGby9o/q2K8Z73ZCTmBLT4NddtZaWPFIEx8b+XKPgm/gS3b816et3x9z1
	YNfPHJGxTh87L0/t2HAaC2VGcQXlp0sd+FnVclhuMX3msNjfftxG4z8W+BhCRmJ9JeQcIMSYUTL
	gfLcDyYpku31bm/+0YvpXkvuy+iIM9evsin++/UlS5Gsfjsn6eu1XBzRMpfnTHWiNT6Flc3CV+P
	4Qpx/7rSRMUQtfv8cF4jhVCQGIU6w4XqjuOigkRFYVWsKXaxJVDhKcEStUvcXQwd9QqgaMHXN9S
	phe24jW3c=
X-Google-Smtp-Source: AGHT+IG3DbwcRlj4uCjp94O1bayt9ny/rytFl1TUbZvGzdohtEHLlfp1Gg9vbixfjueHNe9CAYoQWQ==
X-Received: by 2002:a05:6a21:32a5:b0:366:14ac:8c6a with SMTP id adf61e73a8af0-3898f9b549cmr8446525637.64.1767930802586;
        Thu, 08 Jan 2026 19:53:22 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd2acdsm90501745ad.89.2026.01.08.19.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 19:53:21 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 18C0643A9037; Fri, 09 Jan 2026 10:53:14 +0700 (WIB)
Date: Fri, 9 Jan 2026 10:53:14 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event
 documentation
Message-ID: <aWB7qtKhzbEoY8pJ@archie.me>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
 <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_195324_706233_3F22230B 
X-CRM114-Status: GOOD (  10.23  )
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
Content-Type: multipart/mixed; boundary="===============7999240264935634844=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7999240264935634844==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tfncDExG7J/FagGI"
Content-Disposition: inline


--tfncDExG7J/FagGI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 09, 2026 at 11:29:48AM +0800, Shawn Lin wrote:
>  Documentation/trace/events-pci-conotroller.rst | 41 ++++++++++++++++++++=
++++++

Missing toctree entry in Documentation/trace/index.rst.

> +Available Tracepoints
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +pcie_ltssm_state_transition
> +-----------------------

Please match section underline length.

> +**Example Usage**:
> +
> +    # Enable the tracepoint
> +    echo 1 > /sys/kernel/debug/tracing/events/pci/pcie_ltssm_state_trans=
ition/enable
> +
> +    # Monitor events (the following output is generated when a device is=
 linking)
> +    cat /sys/kernel/debug/tracing/trace_pipe
> +       kworker/0:0-9       [000] .....     5.600221: pcie_ltssm_state_tr=
ansition: dev: a40000000.pcie state: RCVRY_EQ2 rate: 8.0 GT/s

Wrap above example snippets in literal code block (use double colon).

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--tfncDExG7J/FagGI
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaWB7pQAKCRD2uYlJVVFO
o5mFAP9FeIBElbvGhzGEGTxXvKkxEhBsgv2Q43GHm7uX5DykmwD+J0p7viA36u/v
No484hOhG6lBW2aezEIzjzxuZ2BVBg0=
=UMJa
-----END PGP SIGNATURE-----

--tfncDExG7J/FagGI--


--===============7999240264935634844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7999240264935634844==--

