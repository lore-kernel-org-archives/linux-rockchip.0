Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32954606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BaUH0O3d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jRQGDHdt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Ic1kP4/0jOvycWiT0ZE+mTXXqR8Y4HQzJlAiOqG8IJ0=; b=BaUH0O3d18T3yY6EsOFjaymi+M
	qRtHi/DlRJZin8o0D62vRkRhq2xontvwNVcLk3+fDhlf0lOGb5RDuZKgljGEoy/cHo9uHUgR+jf7b
	QRBYzhFWySdXzFbNeBTpibBNzfW/5vCpVwPB8JGGe3yXu663GIuAZSOd6xIPYyKNpmwyLLNdYrYnN
	pQ+6KzeMqTL9hCVnrSkXo8hyZX9wIkwATC3jIm+uBiiKLjNZn5v5ph/Aghdt0C/heqEQB3KLWC2NI
	hW0IvDB6lb1Y14knazmUy6jHQVx/1bMUCN2N2Jim2OKCeHaYceEQpNyv6XM2wi/0O6PrESl9Msf6n
	4bLZmC1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzC-00000006ZFA-2qkN;
	Tue, 17 Nov 2026 17:28:50 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzA-00000006ZCy-1Je5
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 17:28:49 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-4ad60ec5eaaso1048314fac.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 09:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794936527; x=1795541327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ka7y97kjrP1N5aLm53cFojAaC0fJOtAirjVuWEljQwo=;
        b=jRQGDHdtaWWpHD+0lyBf4L21BvUIt6JqWSrhJPij674kkKGE3Gz5Bd4sWcLonXp/iI
         N3sPQ4ppbFKrOPAMeVdO4iikl2BhnUgHaEzkb0YWL2KWpHu/0eDkTj0Q1ZFiLbHJS1yk
         I4HLQFCwoqitabk8NX+4zF85O/Hbyghm3P6QVLlAYkMkIyCNJmZgijJ5LBug2ShfI0uH
         xqYaEpiyMVSpaYp1eTBkWDVcHspaBAvGX95CZXCd4YKmClik8tG1JXn+2+QXtZq3AH+k
         ZTGEM168sHB+hPLYp6sj+3NysxmcfJwuCWwe9ZGZCcRa5jFbss42EZzrBqJHUlqhol15
         K56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794936527; x=1795541327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ka7y97kjrP1N5aLm53cFojAaC0fJOtAirjVuWEljQwo=;
        b=TqF40xVrmfw9un64G5cn+HfVCVHJ5nYUz5Wv0cAyFJszEUP0tHRkgg2FbijeoWXhxf
         OUv1B4CV88BY0PDqe8DHk2jm03l45fgelDbsrXZJIeiRyGDzzdzLiMMyi+sLqb8rA62a
         OYfSiIpRCbs+4+TcNF9wMa5ftNgIs0wc2Q1GMKgjZYZobYDZUj3nKlqIAKdM0rq8IkDw
         sPnIZxb29dqgWrghtXXTe9JQf5vh559sMBfJUy/d9ExtAcm7RaNpNxRdVIdqwBVjE2XC
         pUObL1uUhumhGM3sZ9CToQ1y1ZGjuAL7rYRaj4EgbLmLKFzFRlWTvfxsVcTJ5DwCMfYp
         symw==
X-Gm-Message-State: APuU4Z9g4t9V8d+si6+CTDMucd11+bSo/Ai+irWFZt7ByE5carXFiNTy
	FTPjQS+9Gdnlz6oetfW+VdyNiMPUv/vS4G/blqKSO9bHBSBnEaCnmDhfbepBAEg/
X-Gm-Gg: AYBFou0etAfp5fhHza2z+vVWKgnr9meYReWsFUuRJ6jA1vXVFkezsScgb0DymYREFgp
	5/K502YqlOC7zoBZh6IdXVfa7cqSEQQkierk43E/PSmnIyetzyygcFii+HtT4/f/ywRXuIuQAra
	J7FXJpBei+VZ6CexP2xoPts0YISKPBxblwuwqIylyuNsVD0HBr0tg8VIiCHFTASnXgxNlwoezRk
	J06JtgBAmz1lO/45G9uTFNa6wOqcMYRRfqkgVmCt2XzhWaLEABZWf1QPro7pLefP38Xk43Pn0Mu
	3VqdzhSvU5SXllYbke+16tD2IRKwdnNev6aruP69+aeyoGosw7+Uk1DqPM2IxvFphStNY4TPyUU
	x6kR8DMk6zn6RqBWXLxOpu2wsj4yiCPM2LwOa1BVZDR+KiCXS/1Nk8GLfrmMy1j+W2e4cPuwl4j
	cTCUO08K6/+JRNvi6NGBvQbUdjw4pYGR57oIeLE9sz6Q2GmhAgjmJXj0J6t2NZtIpo1viHG7y2N
	pgW006gxKOfPl5/pPrajsiOJycuHea7UAIZdYRmuTOJKxNZA4chY4H8at5lCGNToVdZlQ3TOivF
	WMbCRpPUF527i7LFAmHzcDEKWq80Dg==
X-Received: by 2002:a05:6870:32ce:b0:4a7:1d64:2695 with SMTP id 586e51a60fabf-4b415e97967mr2027034fac.43.1794936526492;
        Tue, 17 Nov 2026 09:28:46 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4b70d5b1c64sm148358fac.14.2026.11.17.09.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 09:28:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	shawn.lin@rock-chips.com,
	diederik@cknow-tech.com,
	michael.riesch@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	daniel.lezcano@kernel.org,
	tglx@kernel.org,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	david@ixit.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/2] Add rockchip-timer for RK356X
Date: Tue, 17 Nov 2026 11:28:40 -0600
Message-ID: <20261117172842.65346-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_092848_360583_FB934424 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the rockchip-timer to the RK356x SoC. The timer for the RK356x is
register compatible with the rk3288. Address range taken from BSP
device tree and confirmed with rk3568 technical reference manual.

Changes Since V1:
 - Added additional missing maintainers that I forgot to send to for
   V1.

Chris Morgan (2):
  dt-bindings: timer: rockchip: Add rk3568 compatible
  arm64: dts: rockchip: Add timer node for rk356x

 .../devicetree/bindings/timer/rockchip,rk-timer.yaml      | 1 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi             | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
