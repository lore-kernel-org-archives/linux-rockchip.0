Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E14D60A2607
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T5qUyW19;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=TIHnyEb2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iW9vNqQzAUK3ieSyJNS3SSlMLWD/UQ9366iYn0kdADE=; b=T5qUyW19GklChtnHBC1hzRVbk3
	FrEz66oJghtgsPqSTdAU/mTu4FTCRUUCpzHXhGNlzxs0wBIzzuNFXjRvTZ7L6T1a5z+hR0DQc9rkn
	6Bi2FjbUjhLkVOrcQnq8aDJlTI/6KYhN8BfrYV6rxXoOkSZc/WYeZ64XzTmL+QY4dUEW+GCpZ2/6V
	Ekt8Fb1jp84eJe0+OtrG5GjQf700ZwHKja3CBD5lLf+NaudGLTkS6V8difZchv0xKWAc5o9cQCN7z
	s2N82DfY+CsPz4VDzb+uFlxxUviW/0sMctSpj3Vb0Q++xOhj31EkQjsrrxWszRP0KS11TlJUnyu2W
	FAa/Ws8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQnYC-00000004Kke-3EH9;
	Tue, 10 Nov 2026 15:14:20 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQnY9-00000004KjK-0wx0;
	Tue, 10 Nov 2026 15:14:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794323645; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lJe5WwfPQsboU9jabFq1Vhi5ZfpWQL282ERr2ptHz//+dM4i6Bc2YFDCXyugFvqgHH3nFHnCmDWnITQ/qh+WtyNmQmuilitgdMuQDOM4CzV++xQuYXlY29dqnp0s9ltOt68wysZMvrO9B8zQuWFalhOg6OoBwyJMo5oc2qYXm+M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794323645; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Ca7+Dqd4E/749T+VRqLM/gfMqPGBPdrU7OyQ5kokKWw=; 
	b=iCeL2J52dTRD0dWv0gR8dcKEIusicoe+++W979gN3D6e0FZCXbfpwNQVDMjprd/vyEUR72npI3rZ532I/kpwbW5uM8XmIuvk9D2pblS6pVoHS4nUD3Lm8lN1hYqZMcsZImciiJ5vveDIqsgeDAu7ZQr43ITNoBWlkkRN/Ncsi1s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=TIHnyEb23ivDdlDaTZ23hgRBxU6pCSlmo4+pnq+FIf3oLa5YXU+wP+8Ie7Zo+WbWMwIW7RKOejdeUD8YdqSOTFhxEgzsP7NCKIEotA3WzUUkaNdPKf6Qcu/qwaX4cnnnKvKe9+JoxoQpuy+tEDxNibVJi3lPSv60bTpZca+Mftw=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=Ca7+Dqd4E/749T+VRqLM/gfMqPGBPdrU7OyQ5kokKWw=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794323644960444.4158919867489;
	Tue, 10 Nov 2026 07:14:04 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 3EDC5180354; Tue, 10 Nov 2026 16:13:49 +0100 (CET)
Date: Tue, 10 Nov 2026 16:13:48 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: aiyengar1990@gmail.com
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	"Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the
 RK3588 PCIe SMMU
Message-ID: <avMzjsG_Zl8Gh0wJ@venus>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.7.7.1.5.4/291.452.71
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_071417_514522_AB805A6C 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3868747739768725497=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============3868747739768725497==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="24vzfqtpamx44f6c"
Content-Disposition: inline


--24vzfqtpamx44f6c
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the
 RK3588 PCIe SMMU
MIME-Version: 1.0

Hi,

On Tue, Nov 10, 2026 at 07:11:47AM +0000, Arun Iyengar via B4 Relay wrote:
> The MMU-600 in front of the PCIe controllers of the Rockchip RK3588
> (mmu600_pcie) is enabled for every RK3588 board, but its node describes
> neither the power domain it lives in (RK3588_PD_PCIE) nor its clock
> (ACLK_MMU_PCIE). Both are held by any enabled PCIe controller, which is
> why nobody noticed: on a board that enables no PCIe controller in that
> domain (an Orange Pi 5 with its M.2 slot in SATA mode, or any RK3588
> board without PCIe), genpd powers the domain off and the clock framework
> gates the clock as unused after boot, while arm-smmu-v3 stays bound.
> At reboot, arm_smmu_device_shutdown() then writes CR0 and polls CR0ACK on
> the dead block, the interconnect stalls, "reboot: Restarting system" is
> never reached and the board only comes back ~90 s later when the
> watchdog fires.
>=20
> Patches 1 and 2 allow power-domains and clocks in the arm,smmu-v3
> binding (arm,smmu.yaml already allows both for the earlier SMMUs).
> Patch 3 makes the driver get and enable the clocks of its firmware node
> before the first register access, for as long as it is bound; nodes
> without clocks (and ACPI/IORT systems) are unaffected. Patches 4 and 5
> describe the power domain and the clock in rk3588-base.dtsi. Both DT
> patches are needed: with the power domain alone the clock is still
> gated and the shutdown still hangs.
>=20
> Related: Pranjal Shrivastava's "iommu/arm-smmu-v3: Add runtime PM
> support" v11 (2026-09-29, 20260929034510.2023173-1-praan@google.com,
> not merged) adds pm_domain-based runtime PM and resumes the SMMU around
> shutdown, but has no clock handling. This series is compatible with it:
> once it lands, the clocks from patch 3 should move into its runtime
> suspend/resume callbacks.
>=20
> Tested on an Orange Pi 5 (RK3588S) with the M.2 slot in SATA mode and
> the root filesystem on the SATA SSD, where every reboot used to hang:
> three consecutive reboots printed "reboot: Restarting system" and the
> boot loader started 0.6 s later (previously ~89 s, from the watchdog);
> clk_summary shows aclk_mmu_pcie enabled with iommu@fc900000 as consumer
> and pm_genpd_summary shows PD_PCIE on; the SMMU probes as before and
> SATA keeps running at 6.0 Gbps without errors. With patch 4 alone
> (power domain, clock still gated) the reboot still hung at
> "arm-smmu-v3 fc900000.iommu: shutdown" on the serial console. Boards
> with PCIe enabled are already in the state these patches describe.
>=20
> This series was developed with Claude (Anthropic) as a coding assistant:
> it wrote the code and the commit messages, and I reviewed and tested
> every change as described above.
>=20
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---

While at it, maybe also add the reset line (SRST_A_MMU_PCIE on
RK3588) to make the hardware description complete? See also the
MMU-600 TRM, that there is one clock and one reset line:

Link: https://support.arm.com/documentation/100310/0202/Signal-descriptions=
/Clock-and-reset-signals?lang=3Den

Greetings,

-- Sebastian

--24vzfqtpamx44f6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrzNKwACgkQ2O7X88g7
+prULQ//VEgh6N9Y3WLpzFsig1dhiT2LoeoOtAVe85S1Tbd7/c3fTMzrhVzWhVFq
W3WBHB+HGc66sORyvrmexq2QVFCcwp10rhrgc78z+K2d84NJilMXrnB2YcjCRWtC
8m5sCiP0PA64jV41kv/NQ7++CBG2MVSkXZdqJvua7BCSW6jBtxEx0H6hAYsomNkK
tJb7BKs2XbWg7Evz/zQmSNSAZLCSu938nBIrX+eh1Z3vFrvWx6Z1TK5vn5IDD6LT
p6Oy1i8suyCXOus6c/LLUy/saeg3QoksFYWMV7TcCZk0mplPGDdyzjjH4W/yihqi
CvgBkzOxY6AZfTkzhJZ94LzuuhdbKZQemaHaE9sBZQ6Zs6+RCjlWBLnKsOy7Ut55
ZbncW/uK5OFJTfGgsrG5cNwTN+GJGKXlVdqmgjh6mo7ItQrbK91XoZH3oAC02ZDy
+F75j6CS57Cb/QtObqTakXOiyBlwB393eeVhVmBnHb5xmt7vmmR9h4w4I/sxwokO
5Vbg7RFZuS38HrbtRXOMkCZAOvDvBJ4zQ8dWGI6rMdrfMffpfLGd7sjIho/vZJo7
wta4vE2aYvEguH9aoEGrztvW0UgjqMOGfI+txG3u7Mxv6O8ZujV8tR6QOLx8pCAd
sDav3IQ9EtmrV4NTZnIcVtkZ4Go3kbrhPlVfDSXQtZqBI8rGQAY=
=DQeM
-----END PGP SIGNATURE-----

--24vzfqtpamx44f6c--


--===============3868747739768725497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3868747739768725497==--

